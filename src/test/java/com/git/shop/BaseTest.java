package com.git.shop;

import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.transaction.annotation.Transactional;

//指定上下文文件地址
@Transactional("tmBss")
@ContextConfiguration(locations="classpath:spring.xml")
@RunWith(SpringJUnit4ClassRunner.class) // 整合
public class BaseTest {
}
