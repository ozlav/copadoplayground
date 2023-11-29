public class ProfileCheck {

    // Method to check if the current user's profile is equal to "MyProfile"
    public static Boolean isProfileX() {
        // Get the current user's profile Id
        Id userProfileId = [SELECT Id FROM Profile WHERE Name = 'MyProfile'].Id;
        
        // Get the Id of the user's profile
        Id currentUserProfileId = UserInfo.getProfileId();
        
        // Compare the current user's profile Id with the "XYZ" profile Id
        if (currentUserProfileId == userProfileId) {
            // If they match, return true
            return true;
        } else {
            // If they don't match, return false
            return false;
        }
    }
}