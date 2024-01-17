//*****************************************************
//
// �}�l�[�W���[����[manager.cpp]
// Author:���R����
//
//*****************************************************

//*****************************************************
// �C���N���[�h
//*****************************************************
#include "manager.h"
#include "renderer.h"
#include "inputkeyboard.h"
#include "inputmouse.h"
#include "inputjoypad.h"
#include "debugproc.h"
#include "object.h"
#include "camera.h"
#include "light.h"
#include "object3D.h"
#include "objectX.h"
#include "billboard.h"
#include "model.h"
#include "texture.h"
#include "field.h"
#include "motion.h"
#include "particle.h"
#include <stdio.h>

//*****************************************************
// �ÓI�����o�ϐ��錾
//*****************************************************
CRenderer *CManager::m_pRenderer = NULL;	// �����_���[�̃|�C���^
CInputKeyboard *CManager::m_pKeyboard = NULL;	// �L�[�{�[�h�̃|�C���^
CInputMouse *CManager::m_pMouse = NULL;	// �}�E�X�̃|�C���^
CInputJoypad *CManager::m_pJoypad = NULL;	// �W���C�p�b�h�̃|�C���^
CDebugProc *CManager::m_pDebugProc = NULL;	// �f�o�b�O�v���V�[�W���̃|�C���^
CCamera *CManager::m_pCamera = NULL;	// �J�����̃|�C���^
CLight *CManager::m_pLight = NULL;	// ���C�g�̃|�C���^
CTexture *CManager::m_pTexture = NULL;	// �e�N�X�`���Ǘ��ւ̃|�C���^

//=====================================================
// �R���X�g���N�^
//=====================================================
CManager::CManager()
{

}

//=====================================================
// �f�X�g���N�^
//=====================================================
CManager::~CManager()
{

}

//=====================================================
// ����������
//=====================================================
HRESULT CManager::Init(HINSTANCE hInstance, HWND hWnd, BOOL bWindow)
{
	if (m_pRenderer == NULL)
	{// �����_���[����
		m_pRenderer = CRenderer::Create(hWnd, bWindow);
	}

	if (m_pKeyboard == NULL)
	{// �L�[�{�[�h����
		m_pKeyboard = CInputKeyboard::Create(hInstance,hWnd);
	}

	if (m_pMouse == NULL)
	{// �}�E�X����
		m_pMouse = new CInputMouse;

		if (m_pMouse != NULL)
		{
			// �}�E�X������
			if (FAILED(m_pMouse->Init(hInstance, hWnd)))
			{// �������Ɏ��s�����ꍇ
				return E_FAIL;
			}
		}
	}

	if (m_pJoypad == NULL)
	{// �W���C�p�b�h����
		m_pJoypad = new CInputJoypad;

		if (m_pJoypad != NULL)
		{
			// �W���C�p�b�h������
			if (FAILED(m_pJoypad->Init()))
			{// �������Ɏ��s�����ꍇ
				return E_FAIL;
			}
		}
	}

	if (m_pDebugProc == NULL)
	{// �f�o�b�O�v���V�[�W������
		m_pDebugProc = CDebugProc::Create();
	}

	if (m_pCamera == NULL)
	{// �J��������
		m_pCamera = new CCamera;

		if (m_pCamera != NULL)
		{
			// ������
			if (FAILED(m_pCamera->Init()))
			{// �������Ɏ��s�����ꍇ
				return E_FAIL;
			}
		}
	}

	if (m_pLight == NULL)
	{// ���C�g����
		m_pLight = new CLight;

		if (m_pLight != NULL)
		{
			// ������
			if (FAILED(m_pLight->Init()))
			{// �������Ɏ��s�����ꍇ
				return E_FAIL;
			}
		}
	}

	if (m_pTexture == NULL)
	{// �e�N�X�`���Ǘ�����
		m_pTexture = CTexture::Create();
	}

	// ���̐���
	CField *pField = CField::Create();

	FILE *pFile;

	char aTemp[MAX_STRING];

	pFile = fopen("data\\Init.txt","r");

	if (pFile != NULL)
	{
		fscanf(pFile, "%s", &aTemp[0]);
	}

	// ���[�V�����̐���
	CMotion *CMotion = CMotion::Create(&aTemp[0]);

	CParticle::Load();

	return S_OK;
}

//=====================================================
// �I������
//=====================================================
void CManager::Uninit(void)
{
	CParticle::Unload();

	if (m_pRenderer != NULL)
	{// �����_���[�̏I���E�j��
		m_pRenderer->Uninit();
		m_pRenderer = NULL;
	}

	if (m_pKeyboard != NULL)
	{// �L�[�{�[�h�̏I���E�j��
		m_pKeyboard->Uninit();
		m_pKeyboard = NULL;
	}

	if (m_pMouse != NULL)
	{// �}�E�X�̏I���E�j��
		m_pMouse->Uninit();

		delete m_pMouse;
		m_pMouse = NULL;
	}

	if (m_pJoypad != NULL)
	{// �W���C�p�b�h�̏I���E�j��
		m_pJoypad->Uninit();

		delete m_pJoypad;
		m_pJoypad = NULL;
	}

	if (m_pDebugProc != NULL)
	{// �f�o�b�O�v���V�[�W���̏I���E�j��
		m_pDebugProc->Uninit();
		m_pDebugProc = NULL;
	}

	if (m_pLight != NULL)
	{// ���C�g�̏I���E�j��
		m_pLight->Uninit();

		delete m_pLight;
		m_pLight = NULL;
	}

	if (m_pCamera != NULL)
	{// �J�����̏I���E�j��
		m_pCamera->Uninit();

		delete m_pCamera;
		m_pCamera = NULL;
	}

	if (m_pTexture != NULL)
	{// �e�N�X�`���̏I���E�j��
		m_pTexture->Unload();

		m_pTexture = NULL;
	}

	// ���f���j��
	CModel::Unload();
}

//=====================================================
// �X�V����
//=====================================================
void CManager::Update(void)
{
	if (m_pRenderer != NULL)
	{
		// �����_���[�̍X�V
		m_pRenderer->Update();
	}

	if (m_pKeyboard != NULL)
	{
		// �L�[�{�[�h�̍X�V
		m_pKeyboard->Update();
	}

	if (m_pMouse != NULL)
	{
		// �}�E�X�̍X�V
		m_pMouse->Update();
	}

	if (m_pJoypad != NULL)
	{
		// �W���C�p�b�h�̍X�V
		m_pJoypad->Update();
	}

	if (m_pDebugProc != NULL)
	{
		// �f�o�b�O�v���V�[�W���̍X�V
		m_pDebugProc->Update();
	}

	if (m_pCamera != NULL)
	{
		// �J�����̍X�V
		m_pCamera->Update();
	}

	if (m_pLight != NULL)
	{
		// ���C�g�̍X�V
		m_pLight->Update();
	}
}

//=====================================================
// �`�揈��
//=====================================================
void CManager::Draw(void)
{
	if (m_pRenderer != NULL)
	{
		// �����_���[�̕`��
		m_pRenderer->Draw();
	}
}
