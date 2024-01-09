//*****************************************
//
// ���낢��ėp�����l�ߍ���
// Author:���R����
//
//*****************************************

//*****************************************
// �C���N���[�h
//*****************************************
#include "manager.h"
#include "renderer.h"
#include "universal.h"
#include <stdio.h>

namespace universal
{
//=========================================
// ��]���䏈��
//=========================================
void LimitRot(float *fRot)
{
	if (*fRot > D3DX_PI)
	{
		*fRot -= 6.28f;
	}
	if (*fRot < -D3DX_PI)
	{
		*fRot += 6.28f;
	}
}

//=========================================
// ���x�̐���
//=========================================
void LimitSpeed(D3DXVECTOR3 *pVec, float fSpeedMax)
{
	if (pVec == nullptr)
	{
		return;
	}

	// ���x�̎擾
	float fSpeed = D3DXVec3Length(pVec);

	if (fSpeed > fSpeedMax)
	{// ���x�̐���
		D3DXVECTOR3 vecNew = *pVec;

		D3DXVec3Normalize(&vecNew, &vecNew);

		vecNew *= fSpeedMax;

		*pVec = vecNew;
	}
}

//========================================
// �I�t�Z�b�g�ݒ菈��
//========================================
void SetOffSet(D3DXMATRIX *pMtxWorldOffset, D3DXMATRIX mtxWorldOwner, D3DXVECTOR3 posOffset, D3DXVECTOR3 rot)
{
	// �f�o�C�X�̎擾
	LPDIRECT3DDEVICE9 pDevice = CRenderer::GetInstance()->GetDevice();

	//�v�Z�p�}�g���b�N�X
	D3DXMATRIX mtxRot, mtxTrans;

	//���[���h�}�g���b�N�X�̏�����
	D3DXMatrixIdentity(pMtxWorldOffset);

	//�����𔽉f
	D3DXMatrixRotationYawPitchRoll(&mtxRot,
		rot.y, rot.x, rot.z);
	D3DXMatrixMultiply(pMtxWorldOffset, pMtxWorldOffset, &mtxRot);

	//�ʒu�𔽉f
	D3DXMatrixTranslation(&mtxTrans, posOffset.x, posOffset.y, posOffset.z);
	D3DXMatrixMultiply(pMtxWorldOffset, pMtxWorldOffset, &mtxTrans);

	//�}�g���b�N�X���������킹��
	D3DXMatrixMultiply(pMtxWorldOffset, pMtxWorldOffset, &mtxWorldOwner);

	//���[���h�}�g���b�N�X�̐ݒ�
	pDevice->SetTransform(D3DTS_WORLD, pMtxWorldOffset);
}

//========================================
// �����␳����
//========================================
void FactingRot(float *pfRot, float fRotDest, float rotateFact)
{
	// �����̊p�x�̕␳
	LimitRot(pfRot);
	LimitRot(&fRotDest);

	//�����p�x���擾
	float fRotDiff = fRotDest - *pfRot;

	//�p�x�̏C��
	LimitRot(&fRotDiff);

	//�p�x�␳
	*pfRot += fRotDiff * rotateFact;

	LimitRot(pfRot);
}

//========================================
// �����̔�r
//========================================
bool DistCmp(D3DXVECTOR3 posOwn, D3DXVECTOR3 posTarget, float fLengthMax, float *fDiff)
{
	D3DXVECTOR3 vecDiff = posTarget - posOwn;
	float fLength = D3DXVec3Length(&vecDiff);

	if (fLength < fLengthMax)
	{
		if (fDiff != nullptr)
		{
			*fDiff = fLength;
		}

		return true;
	}
	else
	{
		return false;
	}
}

//========================================
// �O�ς̌v�Z
//========================================
float CrossProduct(D3DXVECTOR3 pos1, D3DXVECTOR3 pos2)
{
	return pos1.z * pos2.x - pos1.x * pos2.z;
}

//=====================================================
// �O�ς̓����蔻��v�Z
//=====================================================
bool IsCross(D3DXVECTOR3 posTarget, D3DXVECTOR3 vecSorce, D3DXVECTOR3 vecDest, float *pRate, D3DXVECTOR3 move)
{
	bool bHit = false;

	D3DXVECTOR3 vecLine = vecDest - vecSorce;
	D3DXVECTOR3 vecToPos = posTarget - vecSorce;
	float fArea = CrossProduct(vecLine, vecToPos);

	if (fArea > 0)
	{
		D3DXVECTOR3 vecToPos = posTarget - vecSorce;

		if (pRate != nullptr)
		{
			// �������Z�o
			float fAreaMax = (vecDest.z * move.x) - (vecDest.x * move.z);
			float fArea = (vecToPos.z * move.x) - (vecToPos.x * move.z);

			*pRate = fArea / fAreaMax;
		}

		bHit = true;
	}

	return bHit;
}

//========================================
// ��`�̒��ɂ��邩�ǂ����̌v�Z
//========================================
bool CubeCrossProduct(D3DXVECTOR3 vtx1, D3DXVECTOR3 vtx2, D3DXVECTOR3 vtx3, D3DXVECTOR3 vtx4, D3DXVECTOR3 pos)
{
	bool bHit = false;
	int nHit = 0;

	D3DXVECTOR3 aVec[4] =
	{// �z��Ɋi�[
		vtx1,
		vtx2,
		vtx3,
		vtx4,
	};

	// �S�ӂ̂Ȃ��ɂ��邩�̃`�F�b�N
	for (int i = 0; i < 4; i++)
	{
		int nNext = (i + 1) % 4;

		// �����̌������ɂ��邩�̔���
		bool bCross = IsCross(pos, aVec[i], aVec[nNext], nullptr);

		if (bCross)
		{
			nHit++;
		}
	}

	if (nHit >= 4)
	{
		bHit = true;
	}

	return bHit;
}

//========================================
// �͈͓��̃����_�����l��Ԃ�����
//========================================
int RandRange(int nMax, int nMin)
{
	int nRange = nMax - nMin;
	int nRand = rand() % nRange + nMin;

	return nRand;
}
}	// namespace universal