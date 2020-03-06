package com.jxau.utils;

import java.util.List;

/**
 * 分页工具类
 */
public class Page {

    //总页数
    private int pageCount = 0;

    //页码(当前页)
    private int pageNo = 1;

    //首页
    private int firstPage = 1;

    //尾页
    private int lastPage = 1;

    //上一页
    private int prePage = 1;

    //下一页
    private int nextPage = 1;

    //总条数
    private int rowCount = 1;

    //结果集
    private List<?> resultList;

    //搜索的起始位置
    private int startIndex = 1;

    //搜索的结束位置
    private int endIndex = 1;

    //每页显示多少条
    private int pageSize = 1;

    public Page(int pageNo, int pageSize) {
        this.pageNo = pageNo;
        this.pageSize = pageSize;
        this.startIndex = pageSize * (pageNo - 1) + 1;
        this.endIndex = pageNo * pageSize;
    }

    /**
     * 存入结果集
     * @author
     *
     * @param resultList
     * @param rowCount
     *
     */
    public void setResult(List<?> resultList, int rowCount) {
        this.resultList = resultList;
        this.rowCount = rowCount;

        //总页数
        if(rowCount % pageSize == 0) {
            pageCount = rowCount / pageSize;
        }else {
            pageCount = (rowCount / pageSize) + 1;
        }

        //尾页
        lastPage =  pageCount;

        //上一页
        if(pageNo > 1) {
            prePage = pageNo - 1;
        }

        //下一页
        if(pageNo < lastPage) {
            nextPage = pageNo + 1;
        }else {
            nextPage = lastPage;
        }
    }

    public int getPageCount() {
        return pageCount;
    }

    public void setPageCount(int pageCount) {
        this.pageCount = pageCount;
    }

    public int getPageNo() {
        return pageNo;
    }

    public void setPageNo(int pageNo) {
        this.pageNo = pageNo;
    }

    public int getFirstPage() {
        return firstPage;
    }

    public void setFirstPage(int firstPage) {
        this.firstPage = firstPage;
    }

    public int getLastPage() {
        return lastPage;
    }

    public void setLastPage(int lastPage) {
        this.lastPage = lastPage;
    }

    public int getPrePage() {
        return prePage;
    }

    public void setPrePage(int prePage) {
        this.prePage = prePage;
    }

    public int getNextPage() {
        return nextPage;
    }

    public void setNextPage(int nextPage) {
        this.nextPage = nextPage;
    }

    public int getRowCount() {
        return rowCount;
    }

    public void setRowCount(int rowCount) {
        this.rowCount = rowCount;
    }

    public List<?> getResultList() {
        return resultList;
    }

    public void setResultList(List<?> resultList) {
        this.resultList = resultList;
    }

    public int getStartIndex() {
        return startIndex;
    }

    public void setStartIndex(int startIndex) {
        this.startIndex = startIndex;
    }

    public int getEndIndex() {
        return endIndex;
    }

    public void setEndIndex(int endIndex) {
        this.endIndex = endIndex;
    }

    public int getPageSize() {
        return pageSize;
    }

    public void setPageSize(int pageSize) {
        this.pageSize = pageSize;
    }

}
