package com.ncedu.eventx.models.entities;

import lombok.Data;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import javax.persistence.*;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

@Data
@Getter
@Setter
@Entity
@ToString
@Table(name = "t_roles", schema = "eventx")
public class UserRoleEntity implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    @Column
    private String name;

    @ManyToMany(mappedBy = "roles",
            cascade = {CascadeType.REFRESH, CascadeType.MERGE})
    private List<UserEntity> users = new ArrayList<>();

    @OneToMany(mappedBy = "role")
    private List<UserEventEntity> userEventList = new ArrayList<>();

}
