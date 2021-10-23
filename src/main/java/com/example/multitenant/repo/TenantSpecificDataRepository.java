package com.example.multitenant.repo;

import com.example.multitenant.domain.TenantSpecificData;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface TenantSpecificDataRepository extends JpaRepository<TenantSpecificData, Long> {

    List<TenantSpecificData> findByUsername(String username);

    List<TenantSpecificData> findByCurrentTenantId(Long currentTenantId);
}
