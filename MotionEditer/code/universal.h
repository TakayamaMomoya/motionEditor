//*****************************************
//
// �ėp�����Z�b�g
// Author:���R����
//
//*****************************************
#ifndef _UNIVERSAL_H_
#define _UNIVERSAL_H_

#include "main.h"

//*****************************************
// �N���X�̒�`
//*****************************************
namespace universal
{
	void LimitRot(float *fRot);	//��]���䏈��
	void LimitSpeed(D3DXVECTOR3 *pVec, float fSpeedMax);
	void SetOffSet(D3DXMATRIX *pMtxWorldOffset, D3DXMATRIX mtxWorldOwner, D3DXVECTOR3 posOffset, D3DXVECTOR3 rot = { 0.0f,0.0f,0.0f });	//�I�t�Z�b�g�ݒ菈��
	void FactingRot(float *pfRot, float fRotDest, float rotateFact);	//�����␳����
	bool DistCmp(D3DXVECTOR3 posOwn, D3DXVECTOR3 posTarget,float fLengthMax,float *fDiff);
	int RandRange(int nMax, int nMin);
	float CrossProduct(D3DXVECTOR3 pos1, D3DXVECTOR3 pos2);
	bool IsCross(D3DXVECTOR3 posTarget, D3DXVECTOR3 vecSorce, D3DXVECTOR3 vecDest, float *pRate, D3DXVECTOR3 move = { 0.0f,0.0f,0.0f });
	bool CubeCrossProduct(D3DXVECTOR3 vtx1, D3DXVECTOR3 vtx2, D3DXVECTOR3 vtx3, D3DXVECTOR3 vtx4, D3DXVECTOR3 pos);
}

#endif