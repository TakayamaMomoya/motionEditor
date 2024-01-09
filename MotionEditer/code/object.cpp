//*****************************************************
//
// �I�u�W�F�N�g�̏���[object.h]
// Author:���R����
//
//*****************************************************

//*****************************************************
// �C���N���[�h
//*****************************************************
#include "object.h"
#include "camera.h"
#include "manager.h"

//*****************************************************
// �ÓI�����o�ϐ��錾
//*****************************************************
CObject *CObject::m_apObject[NUM_PRIORITY][NUM_OBJECT] = {};	// �I�u�W�F�N�g�̃|�C���^
int CObject::m_nNumAll = 0;	// ����

//=====================================================
// �D�揇�ʂ����߂�R���X�g���N�^
//=====================================================
CObject::CObject(int nPriority)
{
	// �l�̃N���A
	m_type = TYPE_NONE;

	m_nPriority = nPriority;

	for (int nCntObject = 0; nCntObject < NUM_OBJECT; nCntObject++)
	{
		if (m_apObject[nPriority][nCntObject] == NULL)
		{
			// �����̃|�C���^����
			m_apObject[nPriority][nCntObject] = this;

			// ID���L��
			m_nID = nCntObject;

			// �����J�E���g�A�b�v
			m_nNumAll++;

			break;
		}
	}
}

//=====================================================
// �f�X�g���N�^
//=====================================================
CObject::~CObject()
{

}

//=====================================================
// �ʃ����[�X����
//=====================================================
void CObject::Release(void)
{
	int nId = m_nID;
	int nPriority = m_nPriority;

	if (m_apObject[nPriority][nId] != NULL)
	{
		delete m_apObject[nPriority][nId];
		m_apObject[nPriority][nId] = NULL;

		m_nNumAll--;
	}
}

// �ÓI�����o�֐�======================================

//=====================================================
// �S�����[�X����
//=====================================================
void CObject::ReleaseAll(void)
{
	for (int nCntPriority = 0; nCntPriority < NUM_PRIORITY; nCntPriority++)
	{
		for (int nCntObject = 0; nCntObject < NUM_OBJECT; nCntObject++)
		{
			if (m_apObject[nCntPriority][nCntObject] != NULL)
			{
				m_apObject[nCntPriority][nCntObject]->Uninit();
			}
		}
	}
}

//=====================================================
// �S�X�V����
//=====================================================
void CObject::UpdateAll(void)
{
	for (int nCntPriority = 0; nCntPriority < NUM_PRIORITY; nCntPriority++)
	{
		for (int nCntObject = 0; nCntObject < NUM_OBJECT; nCntObject++)
		{
			if (m_apObject[nCntPriority][nCntObject] != NULL)
			{
				// �X�V����
				m_apObject[nCntPriority][nCntObject]->Update();
			}
		}
	}
}

//=====================================================
// �S�`�揈��
//=====================================================
void CObject::DrawAll(void)
{
	// �J�����̎擾
	CCamera *pCamera = CManager::GetCamera();

	if (pCamera != NULL)
	{// �J�����̐ݒ�
		pCamera->SetCamera();
	}

	for (int nCntPriority = 0; nCntPriority < NUM_PRIORITY; nCntPriority++)
	{
		for (int nCntObject = 0; nCntObject < NUM_OBJECT; nCntObject++)
		{
			if (m_apObject[nCntPriority][nCntObject] != NULL)
			{
				// �`�揈��
				m_apObject[nCntPriority][nCntObject]->Draw();
			}
		}
	}
}