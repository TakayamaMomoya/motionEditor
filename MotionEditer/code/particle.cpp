//*****************************************************
//
// �p�[�e�B�N������[particle.cpp]
// Author:���R����
//
//*****************************************************

//*****************************************************
// �C���N���[�h
//*****************************************************
#include "particle.h"
#include "effect3D.h"

//=====================================================
// �D�揇�ʂ����߂�R���X�g���N�^
//=====================================================
CParticle::CParticle(int nPriority) : CObject(nPriority)
{
	m_pos = { 0.0f,0.0f,0.0f };
	m_nLife = 0;
	m_nNumEffect = 0;
	m_col = { 0.0f,0.0f,0.0f,0.0f };
}

//=====================================================
//	�f�X�g���N�^
//=====================================================
CParticle::~CParticle()
{

}

//=====================================================
//	����������
//=====================================================
HRESULT CParticle::Init(void)
{
	return S_OK;
}

//=====================================================
//	�I������
//=====================================================
void CParticle::Uninit(void)
{
	Release();
}

//=====================================================
//	�X�V����
//=====================================================
void CParticle::Update(void)
{
	// �ϐ��錾
	float fRot,fRot2,fMove;
	D3DXVECTOR3 move = { 0.0f,0.0f,0.0f };
	CEffect3D *pEffect3D = NULL;

	for (int nCntEffect = 0; nCntEffect < m_nNumEffect; nCntEffect++)
	{
		fRot = rand() % 629 - 314 / 100.0f;
		fRot2 = rand() % 629 - 314 / 100.0f;

		//�ړ��ʂ̐ݒ�
		fMove = (float)(rand() % (int)(m_fSpeed * 10)) * 0.1f + m_fSpeed * 0.5f;

		move.x = sinf(fRot) * sinf(fRot2) * fMove;
		move.y = cosf(fRot) * fMove;
		move.z = sinf(fRot) * cosf(fRot2) * fMove;

		// �G�t�F�N�g����
		pEffect3D = CEffect3D::Create(m_pos, 30.0f, 50, m_col, move);

		if (pEffect3D != NULL)
		{
			// �F�ݒ�
			pEffect3D->SetColor(D3DXCOLOR(1.0f, 0.64f, 0.0f, 1.0f));
		}
	}

	m_nLife--;

	if (m_nLife < 0)
	{
		// ���g�̔j��
		Uninit();
	}
}

//=====================================================
//	�ʒu�ݒ菈��
//=====================================================
void CParticle::SetPosition(D3DXVECTOR3 pos)
{
	m_pos = pos;
}

//=====================================================
//	��������
//=====================================================
CParticle *CParticle::Create(D3DXVECTOR3 pos, TYPE type)
{
	CParticle *pParticle = NULL;

	if (pParticle == NULL)
	{// �C���X�^���X����
		pParticle = new CParticle;

		switch (type)
		{// �p�����[�^�[�ݒ�
		case TYPE_EXPLOSION:
			pParticle->m_nLife = 2;

			pParticle->m_pos = pos;

			pParticle->m_fSpeed = 1.0f;

			pParticle->m_nNumEffect = 30;

			pParticle->m_col = D3DXCOLOR{ 1.0f,0.10f,0.0f,1.0f };
			break;
		default:
			break;
		}
	}

	return pParticle;
}