<?php

class ArtikelController extends Controller
{
	
	public $layout='//layouts/column2';
	const URLUPLOAD = '/upload/artikel/';

	
	public function actionView($id)
	{
		$this->render('view',array(
			'model'=>$this->loadModel($id),
		));
	}

	
	public function actionCreate()
	{
		IsAuth::Admin();
		$model=new Artikel;


		if(isset($_POST['Artikel']))
		{
			$model->attributes=$_POST['Artikel'];
			if($model->save())
				$this->redirect(array('view','id'=>$model->ID_ARTIKEL));
		}

		$this->render('create',array(
			'model'=>$model,
		));
	}

	
	public function actionUpdate($id)
	{
		IsAuth::Admin();
		$model=$this->loadModel($id);

		

		if(isset($_POST['Artikel']))
		{
			$model->attributes=$_POST['Artikel'];
			if($model->save())
				$this->redirect(array('view','id'=>$model->ID_ARTIKEL));
		}

		$this->render('update',array(
			'model'=>$model,
		));
	}

	
	public function actionDelete($id)
	{
		IsAuth::Admin();
		$this->loadModel($id)->delete();

		// if AJAX request (triggered by deletion via admin grid view), we should not redirect the browser
		if(!isset($_GET['ajax']))
			$this->redirect(isset($_POST['returnUrl']) ? $_POST['returnUrl'] : array('admin'));
	}

	public function actionIndex()
	{
		IsAuth::Admin();
		$dataProvider=new CActiveDataProvider('Artikel');
		$this->render('index',array(
			'dataProvider'=>$dataProvider,
		));
	}

	
	public function actionAdmin()
	{
		IsAuth::Admin();
		$model=new Artikel('search');
		$model->unsetAttributes();  // clear any default values
		if(isset($_GET['Artikel']))
			$model->attributes=$_GET['Artikel'];

		$this->render('admin',array(
			'model'=>$model,
		));
	}

	
	public function loadModel($id)
	{
		$model=Artikel::model()->findByPk($id);
		if($model===null)
			throw new CHttpException(404,'The requested page does not exist.');
		return $model;
	}

	
	protected function performAjaxValidation($model)
	{
		if(isset($_POST['ajax']) && $_POST['ajax']==='artikel-form')
		{
			echo CActiveForm::validate($model);
			Yii::app()->end();
		}
	}
}
