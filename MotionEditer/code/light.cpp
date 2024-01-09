//*****************************************************
//
// ���C�g�̏���[light.cpp]
// Author:���R����
//
//*****************************************************

//*****************************************************
// �C���N���[�h
//*****************************************************
#include "main.h"
#include "light.h"
#include "manager.h"
#include "renderer.h"

//*****************************************************
// �}�N����`
//*****************************************************
#define ROLL_SPEED							(0.03f)						//���X�s�[�h

//====================================================
//����������
//====================================================
HRESULT CLight::Init(void)
{
	// �����_���[�̎擾
	LPDIRECT3DDEVICE9 pDevice = CManager::GetRenderer()->GetDevice();
	D3DXVECTOR3 vecDir;

	//���C�g�̎�ސݒ�
	m_aLight[0].Type = D3DLIGHT_DIRECTIONAL;

	//���C�g�̊g�U���̐ݒ�
	m_aLight[0].Diffuse = D3DXCOLOR(0.8f, 0.8f, 0.8f, 1.0f);

	//���C�g�̕����ݒ�
	vecDir = D3DXVECTOR3(-1.4f, 0.24f, -2.21f);
	D3DXVec3Normalize(&vecDir, &vecDir);		//�x�N�g�����K��
	m_aLight[0].Direction = vecDir;

	//���C�g�ݒ�
	pDevice->SetLight(0, &m_aLight[0]);

	//���C�g�L����
	pDevice->LightEnable(0, TRUE);

	//���C�g�Q�̐ݒ�============================================
	//���C�g�̎�ސݒ�
	m_aLight[1].Type = D3DLIGHT_DIRECTIONAL;

	//���C�g�̊g�U���̐ݒ�
	m_aLight[1].Diffuse = D3DXCOLOR(0.8f, 0.8f, 0.8f, 1.0f);

	//���C�g�̕����ݒ�
	vecDir = D3DXVECTOR3(1.42f, -0.8f, 0.08f);
	D3DXVec3Normalize(&vecDir, &vecDir);		//�x�N�g�����K��
	m_aLight[1].Direction = vecDir;

	//���C�g�ݒ�
	pDevice->SetLight(1, &m_aLight[1]);

	//���C�g�L����
	pDevice->LightEnable(1, TRUE);

	//���C�g�R�̐ݒ�============================================
	//���C�g�̎�ސݒ�
	m_aLight[2].Type = D3DLIGHT_DIRECTIONAL;

	//���C�g�̊g�U���̐ݒ�
	m_aLight[2].Diffuse = D3DXCOLOR(0.8f, 0.8f, 0.8f, 1.0f);

	//���C�g�̕����ݒ�
	vecDir = D3DXVECTOR3(-0.59f, -0.8f, 1.55f);
	D3DXVec3Normalize(&vecDir, &vecDir);		//�x�N�g�����K��
	m_aLight[2].Direction = vecDir;

	//���C�g�ݒ�
	pDevice->SetLight(2, &m_aLight[2]);

	//���C�g�L����
	pDevice->LightEnable(2, TRUE);

	return S_OK;
}

//====================================================
//�I������
//====================================================
void CLight::Uninit(void)
{

}

//====================================================
//�X�V����
//====================================================
void CLight::Update(void)
{
	// �����_���[�̎擾
	LPDIRECT3DDEVICE9 pDevice = CManager::GetRenderer()->GetDevice();
	D3DXVECTOR3 vecDir;

	////���C�g�ړ�================================================
	//if (GetKeyboardRepeat(DIK_J) == true)
	//{//���ړ�
	//	m_aLight[m_nCurrentLight].Direction.x -= ROLL_SPEED;
	//}
	//if (GetKeyboardRepeat(DIK_L) == true)
	//{//�E�ړ�
	//	m_aLight[m_nCurrentLight].Direction.x += ROLL_SPEED;
	//}

	//if (GetKeyboardRepeat(DIK_I) == true)
	//{//���ړ�
	//	m_aLight[m_nCurrentLight].Direction.z += ROLL_SPEED;
	//}
	//if (GetKeyboardRepeat(DIK_K) == true)
	//{//��O�ړ�
	//	m_aLight[m_nCurrentLight].Direction.z -= ROLL_SPEED;
	//}

	//if (GetKeyboardRepeat(DIK_U) == true)
	//{//��ړ�
	//	m_aLight[m_nCurrentLight].Direction.y += ROLL_SPEED;
	//}
	//if (GetKeyboardRepeat(DIK_M) == true)
	//{//���ړ�
	//	m_aLight[m_nCurrentLight].Direction.y -= ROLL_SPEED;
	//}

	////���C�g�؂�ւ�================================================
	//if (GetKeyboardTrigger(DIK_O) == true)
	//{//���C�g�؂�ւ�
	//	m_nCurrentLight = (m_nCurrentLight + 1) % MAX_LIGHT;
	//}

	for (int nCntLight = 0;nCntLight < MAX_LIGHT;nCntLight++)
	{
		//�x�N�g�����K��
		D3DXVec3Normalize
		(
			&(D3DXVECTOR3)m_aLight[nCntLight].Direction,
			&(D3DXVECTOR3)m_aLight[nCntLight].Direction
		);

		//���C�g�ݒ�
		pDevice->SetLight(nCntLight, &m_aLight[nCntLight]);
	}
}