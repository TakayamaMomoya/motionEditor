//*****************************************************
//
// ���f���̏���[model.cpp]
// Author:���R����
//
//*****************************************************

//*****************************************************
// �C���N���[�h
//*****************************************************
#include "model.h"
#include "manager.h"
#include "renderer.h"
#include "texture.h"
#include <stdio.h>

//*****************************************************
// �ÓI�����o�ϐ��錾
//*****************************************************
char CModel::m_aPath[NUM_MODEL][256] = {};
CModel::Model *CModel::m_apModel[NUM_MODEL] = {};

//=====================================================
// �R���X�g���N�^
//=====================================================
CModel::CModel()
{

}

//=====================================================
// �f�X�g���N�^
//=====================================================
CModel::~CModel()
{

}

//=====================================================
// �S����������
//=====================================================
void CModel::Init(int nIdx)
{
	
}

//=====================================================
// �Ǎ�����
//=====================================================
int CModel::Load(char *pPath)
{
	int nIdxModel = -1;

	for (int nCntModel = 0; nCntModel < NUM_MODEL; nCntModel++)
	{// ���ɓ������f�������邩�̊m�F(�p�X�Ŋm�F)
		if (strcmp(&m_aPath[nCntModel][0], pPath)  == 0)
		{
			return nCntModel;
		}
	}

	for (int nCntModel = 0; nCntModel < NUM_MODEL; nCntModel++)
	{
		if (m_apModel[nCntModel] == NULL)
		{
			// �����_���[�̎擾
			LPDIRECT3DDEVICE9 pDevice = CManager::GetRenderer()->GetDevice();
			D3DXMATERIAL *pMat;				//�}�e���A���f�[�^�ւ̃|�C���^

			m_apModel[nCntModel] = new Model;

			// ���f�����̏�����
			ZeroMemory(m_apModel[nCntModel],sizeof(Model));

			// X�t�@�C���ǂݍ���
			D3DXLoadMeshFromX(pPath,
				D3DXMESH_SYSTEMMEM,
				pDevice,
				NULL,
				&m_apModel[nCntModel]->pBuffMat,
				NULL,
				&m_apModel[nCntModel]->dwNumMat,
				&m_apModel[nCntModel]->pMesh);

			// �K�v�����e�N�X�`���̃|�C���^���m�ۂ���
			m_apModel[nCntModel]->pIdxTexture = new int[m_apModel[nCntModel]->dwNumMat];

			// �}�e���A���f�[�^�ւ̃|�C���^���擾
			pMat = (D3DXMATERIAL*)m_apModel[nCntModel]->pBuffMat->GetBufferPointer();

			for (int nCntMat = 0; nCntMat < (int)m_apModel[nCntModel]->dwNumMat; nCntMat++)
			{
				if (pMat[nCntMat].pTextureFilename != NULL)
				{// �e�N�X�`�������݂���
					// �e�N�X�`���ԍ��擾
					m_apModel[nCntModel]->pIdxTexture[nCntMat] = CManager::GetTexture()->Regist(pMat[nCntMat].pTextureFilename);
				}
				else
				{
					m_apModel[nCntModel]->pIdxTexture[nCntMat] = -1;
				}
			}

			// �ԍ��ۑ�
			nIdxModel = nCntModel;

			// �p�X�ۑ�
			strcpy(&m_aPath[nCntModel][0], pPath);

			break;
		}
	}

	return nIdxModel;
}

//=====================================================
// �S�j������
//=====================================================
void CModel:: Unload(void)
{
	for (int nCntModel = 0; nCntModel < NUM_MODEL; nCntModel++)
	{
		if (m_apModel[nCntModel] != NULL)
		{
			if (m_apModel[nCntModel]->pMesh != NULL)
			{//���b�V���|�C���^�̔j��
				m_apModel[nCntModel]->pMesh->Release();
				m_apModel[nCntModel]->pMesh = NULL;
			}

			if (m_apModel[nCntModel]->pBuffMat != NULL)
			{//���_�o�b�t�@�|�C���^�̔j��
				m_apModel[nCntModel]->pBuffMat->Release();
				m_apModel[nCntModel]->pBuffMat = NULL;
			}
			
			if (m_apModel[nCntModel]->pIdxTexture != NULL)
			{//�e�N�X�`���|�C���^�̔j��
				delete m_apModel[nCntModel]->pIdxTexture;
				m_apModel[nCntModel]->pIdxTexture = NULL;
			}

			delete m_apModel[nCntModel];
			m_apModel[nCntModel] = NULL;
		}
	}
}