//*****************************************************
//
// �J�����̏���[camera.cpp]
// Author:���R����
//
//*****************************************************

//*****************************************************
// �C���N���[�h
//*****************************************************
#include "manager.h"
#include "renderer.h"
#include "main.h"
#include "camera.h"
#include "inputkeyboard.h"
#include "inputmouse.h"
#include "debugproc.h"

//*****************************************************
// �}�N����`
//*****************************************************
#define MOVE_SPEED					(4.0f)						//�ړ��X�s�[�h
#define ROLL_SPEED					(0.03f)						//��]�X�s�[�h
#define MOVE_FACT					(0.3f)						//�ړ������W��

//====================================================
//����������
//====================================================
HRESULT CCamera::Init(void)
{
	m_camera.posV = D3DXVECTOR3(0.0f, 50.0f, -500.0f);
	m_camera.posVOld = D3DXVECTOR3(0.0f, 30.0f, -450.0f);
	m_camera.posR = D3DXVECTOR3(0.0f, 0.0f, 0.0f);
	m_camera.posVDest = D3DXVECTOR3(0.0f, 0.0f, 0.0f);
	m_camera.posRDest = D3DXVECTOR3(0.0f, 0.0f, 0.0f);
	m_camera.vecU = D3DXVECTOR3(0.0f, 1.0f, 0.0f);
	m_camera.rot = D3DXVECTOR3(0.0f, 0.0f, 0.0f);
	m_camera.fLength = 0.0f;

	float fLength = sqrtf
	(//Y�ʂł̑Ίp��
		(m_camera.posV.x - m_camera.posR.x) * (m_camera.posV.x - m_camera.posR.x) + 
		(m_camera.posV.z - m_camera.posR.z) * (m_camera.posV.z - m_camera.posR.z)
	);

	m_camera.fLength = sqrtf
	(//�ڕW�܂ł̒�������
		fLength * fLength + (m_camera.posV.y - m_camera.posR.y) * (m_camera.posV.y - m_camera.posR.y)
	);

	m_camera.rot.x = atan2f(fLength, m_camera.posV.y - m_camera.posR.y);

	SetPosV();

	return S_OK;
}

//====================================================
//�I������
//====================================================
void CCamera::Uninit(void)
{
}

//====================================================
//�X�V����
//====================================================
void CCamera::Update(void)
{
	Control();
}

//====================================================
//���쏈��
//====================================================
void CCamera::Control(void)
{
	// ���͏�����
	CInputKeyboard *pKeyboard = CManager::GetKeyboard();
	CInputMouse *pMouse = CManager::GetMouse();


	//�}�E�X����======================================================
	if (pMouse->GetPress(CInputMouse::BUTTON_RMB) == true)
	{//�E�N���b�N���A���_����
		D3DXVECTOR3 rot;

		//�}�E�X�̈ړ��ʑ��
		rot = { (float)pMouse->GetMoveIX() * ROLL_SPEED, (float)pMouse->GetMoveIY() * ROLL_SPEED, 0.0f };

		D3DXVec3Normalize(&rot, &rot);

		//���_�̐���
		m_camera.rot.y += rot.x * ROLL_SPEED;
		m_camera.rot.x -= rot.y * ROLL_SPEED;

		//�����_�𑊑Έʒu�ɐݒ�
		SetPosR();

		//���_�ړ�===============================================
		if (pKeyboard->GetPress(DIK_A) == true)
		{//���ړ�
			m_camera.posV.x -= sinf(m_camera.rot.y - D3DX_PI * 0.5f) * MOVE_SPEED;
			m_camera.posV.z -= cosf(m_camera.rot.y - D3DX_PI * 0.5f) * MOVE_SPEED;
			SetPosR();
		}
		if (pKeyboard->GetPress(DIK_D) == true)
		{//�E�ړ�
			m_camera.posV.x -= sinf(m_camera.rot.y - D3DX_PI * -0.5f) * MOVE_SPEED;
			m_camera.posV.z -= cosf(m_camera.rot.y - D3DX_PI * -0.5f) * MOVE_SPEED;
			SetPosR();
		}
		if (pKeyboard->GetPress(DIK_W) == true)
		{//�O�ړ�
			m_camera.posV.x += sinf(m_camera.rot.x + D3DX_PI) * sinf(m_camera.rot.y) * MOVE_SPEED;
			m_camera.posV.y += cosf(m_camera.rot.x + D3DX_PI) * MOVE_SPEED;
			m_camera.posV.z += sinf(m_camera.rot.x + D3DX_PI) * cosf(m_camera.rot.y) * MOVE_SPEED;
			SetPosR();
		}
		if (pKeyboard->GetPress(DIK_S) == true)
		{//��ړ�
			m_camera.posV.x += sinf(m_camera.rot.x) * sinf(m_camera.rot.y) * MOVE_SPEED;
			m_camera.posV.y += cosf(m_camera.rot.x) * MOVE_SPEED;
			m_camera.posV.z += sinf(m_camera.rot.x) * cosf(m_camera.rot.y) * MOVE_SPEED;
			SetPosR();
		}
		if (pKeyboard->GetPress(DIK_E) == true)
		{//�㏸
			m_camera.posV.y += MOVE_SPEED;
			SetPosR();
		}
		if (pKeyboard->GetPress(DIK_Q) == true)
		{//���~
			m_camera.posV.y -= MOVE_SPEED;
			SetPosR();
		}
	}
}

//====================================================
//���_�ݒ�
//====================================================
void CCamera::SetPosV(void)
{
	m_camera.posV =
	{
		m_camera.posR.x + sinf(m_camera.rot.x) * sinf(m_camera.rot.y) * m_camera.fLength,
		m_camera.posR.y + cosf(m_camera.rot.x) * m_camera.fLength,
		m_camera.posR.z + sinf(m_camera.rot.x) * cosf(m_camera.rot.y) * m_camera.fLength
	};
}

//====================================================
//�����_�ݒ�
//====================================================
void CCamera::SetPosR(void)
{
	m_camera.posR =
	{
		m_camera.posV.x - sinf(m_camera.rot.x) * sinf(m_camera.rot.y) * m_camera.fLength,
		m_camera.posV.y - cosf(m_camera.rot.x) * m_camera.fLength,
		m_camera.posV.z - sinf(m_camera.rot.x) * cosf(m_camera.rot.y) * m_camera.fLength
	};
}

//====================================================
//�ݒ菈��
//====================================================
void CCamera::SetCamera(void)
{
	// �����_���[�̎擾
	LPDIRECT3DDEVICE9 pDevice = CManager::GetRenderer()->GetDevice();

	//�v���W�F�N�V�����}�g���b�N�X==================================================
	//�v���W�F�N�V�����}�g���b�N�X������
	D3DXMatrixIdentity(&m_camera.mtxProjection);

	//�v���W�F�N�V�����}�g���b�N�X�쐬
	D3DXMatrixPerspectiveFovLH(&m_camera.mtxProjection,
		D3DXToRadian(45.0f),
		(float)SCREEN_WIDTH / (float)SCREEN_HEIGHT,
		MIN_DRAW,
		MAX_DRAW);

	//�}�g���b�N�X�ݒ�
	pDevice->SetTransform(D3DTS_PROJECTION,&m_camera.mtxProjection);

	//�r���[�}�g���b�N�X============================================================
	//�r���[�}�g���b�N�X������
	D3DXMatrixIdentity(&m_camera.mtxView);

	//�r���[�}�g���b�N�X�쐬
	D3DXMatrixLookAtLH(&m_camera.mtxView,
		&m_camera.posV,
		&m_camera.posR,
		&m_camera.vecU);

	//�r���[�}�g���b�N�X�ݒ�
	pDevice->SetTransform(D3DTS_VIEW, &m_camera.mtxView);
}

//====================================================
//���擾����
//====================================================
CCamera::Camera *CCamera::GetCamera(void)
{
	return &m_camera;
}