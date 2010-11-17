/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package com.myapp.struts;

import com.sun.net.httpserver.Authenticator.Failure;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

/**
 *
 * @author Sanders
 */
public class LoginAction extends org.apache.struts.action.Action {
    
    /* forward name="success" path="" */
    private static final String SUCCESS = "success";
    /* forward name="failure" path="" */
    private static final String FAILURE = "failure";
    
    /**
     * This is the action called from the Struts framework.
     * @param mapping The ActionMapping used to select this instance.
     * @param form The optional ActionForm bean for this request.
     * @param request The HTTP Request we are processing.
     * @param response The HTTP Response we are processing.
     * @throws java.lang.Exception
     * @return
     */
    @Override
    public ActionForward execute(ActionMapping mapping, ActionForm form,
            HttpServletRequest request, HttpServletResponse response)
            throws Exception {
        //Extract data
        LoginForm formbean = (LoginForm) form;
        String name = formbean.getName();
        String email = formbean.getEmail();
        //Perform validation
        if((name == null) ||
            email == null ||
            name.equals("") ||
            email.indexOf("@") == -1){
            return mapping.findForward(FAILURE);
        }
        return mapping.findForward(SUCCESS);
    }
}
