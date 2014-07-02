/*
 * Generated by MyEclipse Struts
 * Template path: templates/java/JavaClass.vtl
 */
package com.li.struts.action.student;

import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.upload.FormFile;

import com.li.domain.Attachment;
import com.li.service.inters.AttachmentServiceInter;
import com.li.struts.form.student.UploadFileForm;

/**
 * MyEclipse Struts Creation date: 06-09-2014
 * 
 * XDoclet definition:
 * 
 * @struts.action
 */
public class UploadFileAction extends Action {
	@Resource
	private AttachmentServiceInter attachmentServiceInter;
	public void setAttachmentServiceInter(
			AttachmentServiceInter attachmentServiceInter) {
		this.attachmentServiceInter = attachmentServiceInter;
	}
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		UploadFileForm uploadFileForm = (UploadFileForm) form;

		FormFile myFile = uploadFileForm.getMyFile();
		String attachType = uploadFileForm.getAttachType();
		String subjectId = uploadFileForm.getSubjectId();

		String myFileName = myFile.getFileName();
		InputStream inputStream = null;
		OutputStream os = null;
		try {
			inputStream = myFile.getInputStream();
//			String keepFilePath = this.getServlet().getServletContext().getRealPath("/file");
			String keepFilePath = request.getSession().getServletContext().getRealPath("/upload");
			String path = keepFilePath + "\\\\" + myFileName;
			System.out.println(path);
			os = new FileOutputStream(path);

			int len = 0;
			byte[] bytes = new byte[1024];
			while ((len = inputStream.read(bytes)) > 0) {
				os.write(bytes, 0, len);
			}

			int attachmentTypeId = Integer.parseInt(attachType);
			int subjectId_int = Integer.parseInt(subjectId);
			
			attachmentServiceInter.addAttachment(attachmentTypeId, subjectId_int, myFileName);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally{
			try {
				inputStream.close();
				os.close();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}

		return mapping.findForward("studentMain");
	}
}