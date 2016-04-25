package com.citrix.apac.recruiting.reporsitory;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.citrix.apac.recruiting.entity.MailEntry;

@Repository("mailEntryRepository")
public interface MailEntryRepository extends JpaRepository<MailEntry, Long> {

	@Query("select a from MailEntry a where a.isSent = false")
	List<MailEntry> findSendingQueue();
}
