<aura:application extends="force:slds"> 
    <div class="c-container">
        <div class="slds-global-header">            
            <lightning:layout class="slds-global-header">
                <lightning:layoutItem padding="around-small" >
                    <div class="slds-p-around_xx-large" >
                    <img src="{!$Resource.salliemae}" style="height:45px"/> 
                    </div>
                </lightning:layoutItem>                
            </lightning:layout>
                      
        </div>        
    </div> 
    
    <div class="c-container">
        <div class="slds-p-around_medium">
            <c:HsbcPersonalLoanRegistrationForm/>
        </div>
    </div> 
</aura:application>