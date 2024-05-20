\documentclass{article}
\usepackage{tikz}
\usetikzlibrary{shapes.geometric, arrows}

\tikzstyle{startstop} = [rectangle, rounded corners, minimum width=3cm, minimum height=1cm,text centered, draw=black, fill=red!30]
\tikzstyle{process} = [rectangle, minimum width=3cm, minimum height=1cm, text centered, draw=black, fill=orange!30]
\tikzstyle{decision} = [diamond, minimum width=3cm, minimum height=1cm, text centered, draw=black, fill=green!30]
\tikzstyle{arrow} = [thick,->,>=stealth]

\begin{document}

\begin{tikzpicture}[node distance=2cm]

% Nodes
\node (start) [startstop] {LLP Compliance in India};
\node (tax) [process, below of=start] {Income Tax Act 1961 Compliance};
\node (mca) [process, right of=tax, xshift=5cm] {MCA Compliance e-Forms};
\node (llp) [process, left of=tax, xshift=-5cm] {LLP Act 2008 Compliance};

\node (filing) [process, below of=tax] {Filing Income Tax Return};
\node (itr5) [process, below of=filing] {Form ITR-5};
\node (duedate) [decision, below of=itr5] {Due Date};
\node (audit) [process, below of=duedate, yshift=-1cm] {Audit Required: Sep 30};
\node (noaudit) [process, right of=audit, xshift=3cm] {No Audit: July 31};

\node (taxaudit) [process, below of=audit, yshift=-2cm] {Tax Audits};
\node (turnover) [process, below of=taxaudit] {Turnover > ₹1 crore (₹50 lakh for professional LLPs)};
\node (section44ab) [process, below of=turnover] {Section 44AB};

\node (advancetax) [process, below of=section44ab] {Advance Tax};
\node (taxliability) [process, below of=advancetax] {Tax Liability > ₹10,000};
\node (duedates) [process, below of=taxliability] {Due Dates: 15th June: 15%, 15th Sep: 45%, 15th Dec: 75%, 15th Mar: 100%};

\node (annual) [process, below of=mca] {Annual Compliance};
\node (form11) [process, below of=annual] {Form 11 (Annual Return)};
\node (duedate11) [process, below of=form11] {Due Date: 30th May};
\node (details11) [process, below of=duedate11] {Details of Partners and Changes};

\node (form8) [process, below of=details11] {Form 8 (Statement of Account \& Solvency)};
\node (duedate8) [process, below of=form8] {Due Date: 30th October};
\node (details8) [process, below of=duedate8] {Details of Accounts, Income, and Expenditure};

\node (event) [process, right of=annual, xshift=5cm] {Event-based Compliance};
\node (form3) [process, below of=event] {Form 3 (LLP Agreement and Changes)};
\node (duedate3) [process, below of=form3] {Due Date: Within 30 days};

\node (form4) [process, below of=duedate3] {Form 4 (Appointment/Cessation of Partners)};
\node (duedate4) [process, below of=form4] {Due Date: Within 30 days};

\node (form5) [process, below of=duedate4] {Form 5 (Change of Name)};
\node (duedate5) [process, below of=form5] {Due Date: Within 30 days};

\node (form15) [process, below of=duedate5] {Form 15 (Change of Registered Office)};
\node (duedate15) [process, below of=form15] {Due Date: Within 30 days};

\node (other) [process, right of=form15, xshift=5cm] {Other Compliance};
\node (form9) [process, below of=other] {Form 9 (Consent to Act as Designated Partner)};
\node (required) [process, below of=form9] {Required at Incorporation};

\node (maintenance) [process, below of=llp] {Maintenance of Books of Accounts};
\node (basis) [process, below of=maintenance] {Cash or Accrual Basis};
\node (doubleentry) [process, below of=basis] {Double-entry System};

\node (annualreturn) [process, below of=doubleentry] {Annual Return};
\node (form11llp) [process, below of=annualreturn] {Form 11};
\node (filed) [process, below of=form11llp] {Filed with Registrar Each Year};

\node (solvency) [process, below of=filed] {Statement of Account and Solvency};
\node (form8llp) [process, below of=solvency] {Form 8};
\node (filed8) [process, below of=form8llp] {Filed with Registrar Each Year};

\node (auditreq) [process, below of=filed8] {Audit Requirement};
\node (turnover25) [process, below of=auditreq] {Turnover > ₹40 lakh or Contribution > ₹25 lakh};

\node (key) [process, below of=start, yshift=-35cm] {Key Points to Remember};
\node (dscdin) [process, below of=key] {DSC and DIN for All Designated Partners};
\node (penalties) [process, below of=dscdin] {Penalties for Non-compliance};
\node (updates) [process, below of=penalties] {Regular Updates from MCA and IT Authorities};

% Arrows
\draw [arrow] (start) -- (tax);
\draw [arrow] (start) -- (mca);
\draw [arrow] (start) -- (llp);

\draw [arrow] (tax) -- (filing);
\draw [arrow] (filing) -- (itr5);
\draw [arrow] (itr5) -- (duedate);
\draw [arrow] (duedate) -- (audit);
\draw [arrow] (duedate) -- (noaudit);

\draw [arrow] (audit) -- (taxaudit);
\draw [arrow] (taxaudit) -- (turnover);
\draw [arrow] (turnover) -- (section44ab);

\draw [arrow] (section44ab) -- (advancetax);
\draw [arrow] (advancetax) -- (taxliability);
\draw [arrow] (taxliability) -- (duedates);

\draw [arrow] (mca) -- (annual);
\draw [arrow] (annual) -- (form11);
\draw [arrow] (form11) -- (duedate11);
\draw [arrow] (duedate11) -- (details11);

\draw [arrow] (details11) -- (form8);
\draw [arrow] (form8) -- (duedate8);
\draw [arrow] (duedate8) -- (details8);

\draw [arrow] (annual) -- (event);
\draw [arrow] (event) -- (form3);
\draw [arrow] (form3) -- (duedate3);

\draw [arrow] (duedate3) -- (form4);
\draw [arrow] (form4) -- (duedate4);

\draw [arrow] (duedate4) -- (form5);
\draw [arrow] (form5) -- (duedate5);

\draw [arrow] (duedate5) -- (form15);
\draw [arrow] (form15) -- (duedate15);

\draw [arrow] (duedate15) -- (other);
\draw [arrow] (other) -- (form9);
\draw [arrow] (form9) -- (required);

\draw [arrow] (llp) -- (maintenance);
\draw [arrow] (maintenance) -- (basis);
\draw [arrow] (basis) -- (doubleentry);

\draw [arrow] (doubleentry) -- (annualreturn);
\draw [arrow] (annualreturn) -- (form11llp);
\draw [arrow] (form11llp) -- (filed);

\draw [arrow] (filed) -- (solvency);
\draw [arrow] (solvency) -- (form8llp);
\draw [arrow] (form8llp) -- (filed8);

\draw [arrow] (filed8) -- (auditreq);
\draw [arrow] (auditreq) -- (turnover25);

\draw [arrow] (start) -- (key);
\draw [arrow] (key) -- (dscdin);
\draw [arrow] (dscdin) -- (penalties);
\draw [arrow] (penalties) -- (updates);

\end{tikzpicture}

\end{document}
