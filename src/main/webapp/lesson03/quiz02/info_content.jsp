<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>

<%
// 아티스트 정보 

Map<String, Object> artistInfo = new HashMap<>();
artistInfo.put("name", "아이유");
artistInfo.put("debute", 2008);
artistInfo.put("agency", "EDAM엔터테인먼트");
artistInfo.put("photo", "http://image.genie.co.kr/Y/IMAGE/IMG_ALBUM/081/867/444/81867444_1616662460652_1_600x600.JPG");

// 아이유 노래 리스트 
List<Map<String, Object>> musicList = new ArrayList<>();

Map<String, Object> musicInfo = new HashMap<>();
musicInfo.put("id", 1);
musicInfo.put("title", "팔레트");
musicInfo.put("album", "Palette");
musicInfo.put("singer", "아이유");
musicInfo.put("thumbnail", "https://upload.wikimedia.org/wikipedia/ko/b/b6/IU_Palette_final.jpg");
musicInfo.put("time", 217);
musicInfo.put("composer", "아이유");
musicInfo.put("lyricist", "아이유");
musicList.add(musicInfo);

musicInfo = new HashMap<>();
musicInfo.put("id", 2);
musicInfo.put("title", "좋은날");
musicInfo.put("album", "Real");
musicInfo.put("singer", "아이유");
musicInfo.put("thumbnail", "https://upload.wikimedia.org/wikipedia/ko/3/3c/IU_-_Real.jpg");
musicInfo.put("time", 233);
musicInfo.put("composer", "이민수");
musicInfo.put("lyricist", "김이나");
musicList.add(musicInfo);

musicInfo = new HashMap<>();
musicInfo.put("id", 3);
musicInfo.put("title", "밤편지");
musicInfo.put("album", "palette");
musicInfo.put("singer", "아이유");
musicInfo.put("thumbnail", "https://upload.wikimedia.org/wikipedia/ko/b/b6/IU_Palette_final.jpg");
musicInfo.put("time", 253);
musicInfo.put("composer", "제휘,김희원");
musicInfo.put("lyricist", "아이유");
musicList.add(musicInfo);

musicInfo = new HashMap<>();
musicInfo.put("id", 4);
musicInfo.put("title", "삐삐");
musicInfo.put("album", "삐삐");
musicInfo.put("singer", "아이유");
musicInfo.put("thumbnail",
		"https://image.genie.co.kr/Y/IMAGE/IMG_ALBUM/081/111/535/81111535_1539157728291_1_600x600.JPG");
musicInfo.put("time", 194);
musicInfo.put("composer", "이종훈");
musicInfo.put("lyricist", "아이유");
musicList.add(musicInfo);

musicInfo = new HashMap<>();
musicInfo.put("id", 5);
musicInfo.put("title", "스물셋");
musicInfo.put("album", "CHAT-SHIRE");
musicInfo.put("singer", "아이유");
musicInfo.put("thumbnail",
		"https://image.genie.co.kr/Y/IMAGE/IMG_ALBUM/080/724/877/80724877_1445520704274_1_600x600.JPG");
musicInfo.put("time", 194);
musicInfo.put("composer", "아이유,이종훈,이채규");
musicInfo.put("lyricist", "아이유");
musicList.add(musicInfo);

musicInfo = new HashMap<>();
musicInfo.put("id", 6);
musicInfo.put("title", "Blueming");
musicInfo.put("album", "Love poem");
musicInfo.put("singer", "아이유");
musicInfo.put("thumbnail",
		"https://upload.wikimedia.org/wikipedia/ko/6/65/%EC%95%84%EC%9D%B4%EC%9C%A0_-_Love_poem.jpg");
musicInfo.put("time", 217);
musicInfo.put("composer", "아이유,이종훈,이채규");
musicInfo.put("lyricist", "아이유");
musicList.add(musicInfo);
%>

<%
	// 상세정보를 보여줄 target Map 세팅
	// Map <String, Object> target = new HashMap<>(); // {}
	Map <String, Object> target = null;
	
	// 1. 목록에서 클릭한 경우 (id값)
	if (request.getParameter("id") != null) {
		
		int id = Integer.valueOf(request.getParameter("id")); // id는 원래 int형으로 int로 받아오는 것이 좋다
		// out.print("############### id:" + id);
		for (Map <String, Object> music:musicList) {
			if (id == (int)music.get("id")) { // Object형으로 int로 캐스팅해얗함
				target = music;
				break; // 불필요한 반복문을 줄이기 위해
			}
		}
	}
	
	// 2. 상단에서 검색한 경우 (search값)
	if (request.getParameter("search") != null) {
		String search = request.getParameter("search");
		// out.print("######## search:" + search);
		
		for (Map <String, Object> music:musicList) {
			if (search.equals(music.get("title"))) { // 만약 error가 뜨면 캐스팅 해주면 됨
				target = music;
				break;
			}
		}
	}
	
	// out.print(target);
%>
<section>
	<h3 class="mt-4">곡 정보</h3>
	<div class="music-info d-flex mt-4 border border-success p-3">
		<div class="music-photo mr-4">
			<img alt="노래 이미지"
				src="<%= target.get("thumbnail") %>"
				width="150px">
		</div>
		<div class="music-detaail">
			<div class="display-4"><%= target.get("title") %></div>
			<div class="text-success font-weight-bold"><%= target.get("singer") %></div>
			<div class="text-secondary d-flex mt-3">
				<div>
					앨범<br>
					재생시간<br>
					작곡가<br>
					작사가
				</div>
				<div class="ml-4">
					<%= target.get("album") %><br>
					<%= (int)target.get("time") / 60 %> : <%= (int)target.get("time") % 60 %> <br>
					<!-- Object 형으로 바로 연산하면 안됨 캐스팅 꼭할것 -->
					<%= target.get("composer") %><br>
					<%= target.get("lyricist") %>
					
				</div>
			</div>
		</div>
	</div>
	
	<h3 class="mt-4">가사</h3>
	<hr>
	<span>가사 정보 없음</span>
</section>