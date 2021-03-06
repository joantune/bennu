/*
 * @(#)EmailDispatcher.java
 *
 * Copyright 2011 Instituto Superior Tecnico
 * Founding Authors: Luis Cruz
 * 
 *      https://fenix-ashes.ist.utl.pt/
 * 
 *   This file is part of the E-mail SMTP Adapter Module.
 *
 *   The E-mail SMTP Adapter Module is free software: you can
 *   redistribute it and/or modify it under the terms of the GNU Lesser General
 *   Public License as published by the Free Software Foundation, either version 
 *   3 of the License, or (at your option) any later version.
 *
 *   The E-mail Module is distributed in the hope that it will be useful,
 *   but WITHOUT ANY WARRANTY; without even the implied warranty of
 *   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
 *   GNU Lesser General Public License for more details.
 *
 *   You should have received a copy of the GNU Lesser General Public License
 *   along with the E-mail Module. If not, see <http://www.gnu.org/licenses/>.
 * 
 */
package pt.ist.emailNotifier.domain;

/**
 * 
 * @author Luis Cruz
 * 
 */
public class EmailDispatcher extends EmailDispatcher_Base {

    public EmailDispatcher() {
        super();
    }

    @Override
    public void executeTask() {
//	for (Email email : EmailNotifier.getInstance().getEmails()) {
//	    email.deliver();
//	}
    }

    @Override
    public String getLocalizedName() {
        return getClass().getName();
    }

}
