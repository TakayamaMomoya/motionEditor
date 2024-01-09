//*****************************************************
//
// �e�̏���[shadow.cpp]
// Author:���R����
//
//*****************************************************

//*****************************************************
// �C���N���[�h
//*****************************************************
#include "shadow.h"
#include "manager.h"
#include "texture.h"

//=====================================================
// �R���X�g���N�^
//=====================================================
CShadow::CShadow(int nPriority) : CObject3D(nPriority)
{

}

//=====================================================
// �f�X�g���N�^
//=====================================================
CShadow::~CShadow()
{

}

//=====================================================
// ����������
//=====================================================
HRESULT CShadow::Init(void)
{
	// �p���N���X�̏�����
	CObject3D::Init();

	return S_OK;
}

//=====================================================
// �I������
//=====================================================
void CShadow::Uninit(void)
{
	// �p���N���X�̏I��
	CObject3D::Uninit();
}

//=====================================================
// �X�V����
//=====================================================
void CShadow::Update(void)
{
	// �p���N���X�̍X�V
	CObject3D::Update();
}

//=====================================================
// �`�揈��
//=====================================================
void CShadow::Draw(void)
{
	// �p���N���X�̕`��
	CObject3D::Draw();
}

//=====================================================
// ��������
//=====================================================
CShadow *CShadow::Create(D3DXVECTOR3 pos, float width, float height)
{
	CShadow *pShadow = NULL;

	if (pShadow == NULL)
	{
		pShadow = new CShadow;

		if (pShadow != NULL)
		{
			pShadow->SetPosition(D3DXVECTOR3(pos));
			pShadow->SetSize(width, height);

			// ������
			pShadow->Init();

			// �e�N�X�`���̓Ǎ�
			int nIdx = CManager::GetTexture()->Regist("data\\TEXTURE\\EFFECT\\effect000.png");
			pShadow->SetIdxTexture(nIdx);

			pShadow->SetColor(D3DXCOLOR(0.0f,0.0f,0.0f,1.0f));
		}
	}

	return pShadow;
}