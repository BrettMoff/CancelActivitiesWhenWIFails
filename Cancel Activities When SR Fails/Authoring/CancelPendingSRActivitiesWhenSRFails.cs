//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Runtime Version:4.0.30319.42000
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace WorkflowAuthoring
{
    using System;
    using System.ComponentModel;
    using System.ComponentModel.Design;
    using System.Workflow.ComponentModel.Design;
    using System.Workflow.ComponentModel;
    using System.Workflow.ComponentModel.Serialization;
    using System.Workflow.ComponentModel.Compiler;
    using System.Drawing;
    using System.Collections;
    using System.Workflow.Activities;
    using System.Workflow.Runtime;
    
    
    public partial class CancelPendingSRActivitiesWhenSRFails : System.Workflow.Activities.SequentialWorkflowActivity
    {
        
        public static System.Workflow.ComponentModel.DependencyProperty CancelSRActivities_ServiceRequestIDProperty = DependencyProperty.Register("CancelSRActivities_ServiceRequestID", typeof(System.String), typeof(WorkflowAuthoring.CancelPendingSRActivitiesWhenSRFails));
        
        public string CancelSRActivities_ServiceRequestID
        {
            get
            {
                return ((string)(base.GetValue(WorkflowAuthoring.CancelPendingSRActivitiesWhenSRFails.CancelSRActivities_ServiceRequestIDProperty)));
            }
            set
            {
                base.SetValue(WorkflowAuthoring.CancelPendingSRActivitiesWhenSRFails.CancelSRActivities_ServiceRequestIDProperty, value);
            }
        }
    }
}