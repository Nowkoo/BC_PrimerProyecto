/// <summary>
/// Provides functionality to create and send e-mails.
/// </summary>

codeunit 50120 XMLComments
{
    Access = Public;
    /// <summary>
    /// Enqueues an email in the outbox to be sent in the background.
    /// </summary>
    /// <param name="EmailMessageId">The ID of the email to enqueue. Para símbolos mayor y menor &gt; y &lt;</param>

    procedure Enqueue(EmailMessageId: Guid)
    begin

    end;

    #region enqueue
    // Para marcar bloques de código que se pueden expandir y colapsar.
    #endregion
}