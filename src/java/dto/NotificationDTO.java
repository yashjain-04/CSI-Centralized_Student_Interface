package dto;

/**
 *
 * @author ydhup
 */
public class NotificationDTO {
    String number, title, message, noticeFor, noticeFrom;

    public String getNumber() {
        return number;
    }

    public void setNumber(String number) {
        this.number = number;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public String getNoticeFor() {
        return noticeFor;
    }

    public void setNoticeFor(String noticeFor) {
        this.noticeFor = noticeFor;
    }

    public String getNoticeFrom() {
        return noticeFrom;
    }

    public void setNoticeFrom(String noticeFrom) {
        this.noticeFrom = noticeFrom;
    }
}
