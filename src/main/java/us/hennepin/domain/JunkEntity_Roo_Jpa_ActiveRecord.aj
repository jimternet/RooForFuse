// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package us.hennepin.domain;

import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;
import us.hennepin.domain.JunkEntity;

privileged aspect JunkEntity_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager JunkEntity.entityManager;
    
    public static final EntityManager JunkEntity.entityManager() {
        EntityManager em = new JunkEntity().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long JunkEntity.countJunkEntitys() {
        return entityManager().createQuery("SELECT COUNT(o) FROM JunkEntity o", Long.class).getSingleResult();
    }
    
    public static List<JunkEntity> JunkEntity.findAllJunkEntitys() {
        return entityManager().createQuery("SELECT o FROM JunkEntity o", JunkEntity.class).getResultList();
    }
    
    public static JunkEntity JunkEntity.findJunkEntity(Long id) {
        if (id == null) return null;
        return entityManager().find(JunkEntity.class, id);
    }
    
    public static List<JunkEntity> JunkEntity.findJunkEntityEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM JunkEntity o", JunkEntity.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void JunkEntity.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void JunkEntity.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            JunkEntity attached = JunkEntity.findJunkEntity(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void JunkEntity.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void JunkEntity.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public JunkEntity JunkEntity.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        JunkEntity merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}
