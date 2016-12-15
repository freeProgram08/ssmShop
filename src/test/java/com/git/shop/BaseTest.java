package com.git.shop;

import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
//指定上下文文件地址
@ContextConfiguration(locations="classpath:spring.xml")
@RunWith(SpringJUnit4ClassRunner.class) // 整合
public class BaseTest {
}
