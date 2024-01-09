//*****************************************************
//
// �}�l�[�W���[����[manager.h]
// Author:���R����
//
//*****************************************************
#ifndef _MANAGER_H_
#define _MANAGER_H_

//*****************************************************
// �C���N���[�h
//*****************************************************
#include "main.h"

//*****************************************************
// �O���錾
//*****************************************************
class CRenderer;
class CInputKeyboard;
class CInputMouse;
class CInputJoypad;
class CDebugProc;
class CCamera;
class CLight;
class CTexture;

//*****************************************************
// �N���X�̒�`
//*****************************************************
class CManager
{
public:
	CManager();	// �R���X�g���N�^
	~CManager();	// �f�X�g���N�^

	HRESULT Init(HINSTANCE hInstance,HWND hWnd,BOOL bWindow);
	void Uninit(void);
	void Update();
	void Draw();
	static CRenderer *GetRenderer(void) { return m_pRenderer; }
	static CInputKeyboard *GetKeyboard(void) { return m_pKeyboard; }
	static CInputMouse *GetMouse(void) { return m_pMouse; }
	static CInputJoypad *GetJoypad(void) { return m_pJoypad; }
	static CDebugProc *GetDebugProc(void) { return m_pDebugProc; }
	static CCamera *GetCamera(void) { return m_pCamera; }
	static CLight *GetLight(void) { return m_pLight; }
	static CTexture *GetTexture(void) { return m_pTexture; }

private:
	static CRenderer *m_pRenderer;	// �����_���[�̃N���X
	static CInputKeyboard *m_pKeyboard;	// �L�[�{�[�h�̃N���X
	static CInputMouse *m_pMouse;	// �}�E�X�̃N���X
	static CInputJoypad *m_pJoypad;	// �}�E�X�̃N���X
	static CDebugProc *m_pDebugProc;	// �f�o�b�O�v���V�[�W���̃N���X
	static CCamera *m_pCamera;	// �J�����̃|�C���^
	static CLight *m_pLight;	// ���C�g�̃|�C���^
	static CTexture *m_pTexture;	// �e�N�X�`���Ǘ��ւ̃|�C���^
};

#endif