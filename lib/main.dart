import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(const ResumApp());
}

class ResumApp extends StatelessWidget {
  const ResumApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ResumPage(),
    );
  }
}

class ResumPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: Text("Resume"),
            bottom: TabBar(
              tabs: [
                Tab(text: '이력서'),
                Tab(text: '자기소개서'),
                Tab(text: '포트폴리오'),
              ],
            ),
          ),
          body: TabBarView(children: [
            ResumeTab(),
            IntroduceTab(),
            PortfolioTab(),
          ]),
        ));
  }
}

class ResumeTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
                flex: 1,
                child: Container(
                  color: Colors.blue[900],
                  padding: EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: CircleAvatar(
                          radius: 50,
                          backgroundImage: AssetImage('image/Jm.jpg'),
                        ),
                      ),
                      SizedBox(height: 20),
                      Text(
                        'CONTACT',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 10),
                      ContactItem(icon: Icons.phone, text: '010-6520-2000'),
                      ContactItem(
                          icon: Icons.email, text: 'pizzashim@naver.com'),
                      ContactItem(icon: Icons.location_on, text: 'Busan hakjang'),
                      SizedBox(height: 20),
                      Text(
                        'EDUCATION',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 10),
                      EducationItem(year: '2016 - 2018', title: '구덕고', subtitle: '구덕고등학교'),
                      EducationItem(
                          year: '2019 - 2025',
                          title: '신라대',
                          subtitle: '신라대\n컴퓨터공학부'),
                      SizedBox(height: 10),
                      Text(
                        'SKILL',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 10),
                      SkillItem(text: 'Springboot'),
                      SkillItem(text: 'Spring'),
                      SkillItem(text: 'Java'),
                      SkillItem(text: 'Python'),
                      SkillItem(text: 'Oracle'),
                      SkillItem(text: 'Mysql'),
                      SkillItem(text: 'Git'),
                      SkillItem(text: 'Github'),
                      SizedBox(height: 30)
                    ],
                  ),
                )),
            Expanded(
                flex: 2,
                child: Container(
                  color: Colors.grey[200],
                  padding: EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '심재민',
                        style: TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue[900]),
                      ),
                      SizedBox(height: 5),
                      Text(
                        'backend developer',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue[900]),
                      ),
                      SizedBox(height: 10),
                      Text(
                        '백엔드 개발자 지망 심재민입니다 반갑습니다.',
                        style: TextStyle(fontSize: 15, color: Colors.grey[800]),
                      ),
                      SizedBox(height: 20),
                    ],
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
class IntroduceTab extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
                flex: 2,
                child: Container(
                  padding: EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 5),
                      Text(
                        '지원동기',
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      SizedBox(height: 10),
                      Text(
                        '안녕하십니까. 이번에 백엔드 개발자로 지원하게된 심재민입니다.\n'
                            'Git과 GitHub를 활용한 웹 프로젝트 경험은 개발자로서의 성장과 협업의 중요성을 깨닫게 한 소중한 시간이었습니다.\n'
                            '프로젝트 진행 중 Git을 통해 버전 관리를 체계적으로 수행하고, \n'
                            'GitHub를 활용하여 팀원들과의 실시간 협업과 코드 리뷰를 진행하며 효율적인 개발 환경을 조성할 수 있었습니다.\n'
                            '이를 통해 발생한 문제를 신속히 해결하고, 팀의 목표를 달성하는 과정에서 책임감을 갖고 기여하는 법을 배웠습니다.\n'
                            '이러한 경험을 바탕으로, 안정적이고 확장 가능한 백엔드 시스템을 구축하며 회사의 비즈니스 목표를 지원하는 데 기여하고 싶습니다.\n'
                            '더불어 새로운 기술을 배우고 이를 실제 업무에 적용하며 성장할 수 있는 기회를 기대합니다. \n'
                            '귀사의 환경에서 저의 기술적 역량과 협업 능력을 발휘하여 긍정적인 변화를 만들어나가고 싶습니다.',
                        style: TextStyle(fontSize: 17, color: Colors.grey[800]),
                      ),
                      SizedBox(height: 20),
                    ],
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
class PortfolioTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
            ),
            _buildProjectCard(
              title: 'Project 01',
              date: '2024.06 ~ 2024.11',
              description:
              'AI당근마켓 프론트엔드.\n'
                  '주요 역할: UI/UX 디자인, 웹사이트 개발',
            ),
            SizedBox(height: 10),
            _buildProjectCard(
              title: 'Project 02',
              date: '2023.06 ~ 2023.08',
              description:
              '스프링프레임워크를 활용한 게시판 만들기\n'
                  '주요 역할: 백엔드 개발.',
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildProjectCard({
    required String title,
    required String date,
    required String description,
  }) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(16),
      margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.grey.shade300),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
          ),
          SizedBox(height: 10),
          Text(
            date,
            style: TextStyle(fontSize: 14, color: Colors.grey[600]),
          ),
          SizedBox(height: 10),
          Text(
            description,
            style: TextStyle(fontSize: 15, color: Colors.grey[800]),
          ),
        ],
      ),
    );
  }
}
class ContactItem extends StatelessWidget {
  final IconData icon;
  final String text;

  ContactItem({required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth < 200) {
        return Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(icon, color: Colors.white),
            SizedBox(width: 10),
            Expanded(
                child: Text(
                  text,
                  style: TextStyle(color: Colors.white),
                  overflow: TextOverflow.visible,
                ))
          ],
        );
      } else {
        return Row(
          children: [
            Icon(icon, color: Colors.white),
            SizedBox(width: 10),
            Flexible(
                child: Text(
                  text,
                  style: TextStyle(color: Colors.white),
                  overflow: TextOverflow.visible,
                ))
          ],
        );
      }
    });
  }
}

class EducationItem extends StatelessWidget {
  final String year;
  final String title;
  final String subtitle;

  EducationItem(
      {required this.year, required this.title, required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          year,
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        Text(
          subtitle,
          style: TextStyle(color: Colors.white),
        ),
        SizedBox(height: 10),
      ],
    );
  }
}

class SkillItem extends StatelessWidget {
  final String text;

  SkillItem({required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 5),
      child: Text('˚ $text', style: TextStyle(color: Colors.white)),
    );
  }
}

class ExperinenceItem extends StatelessWidget {
  final String title;
  final String perioad;
  final String company;
  final List<String> details;

  ExperinenceItem(
      {required this.title,
        required this.perioad,
        required this.company,
        required this.details});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('$title',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
          Text('$perioad | $company',
              style: TextStyle(fontSize: 14, color: Colors.grey[700])),
          SizedBox(height: 5),
          ...details.map((detail) => Padding(
            padding: EdgeInsets.only(top: 5),
            child: Text(' $detail',
                style: TextStyle(fontSize: 14, color: Colors.grey[800])),
          )),
        ],
      ),
    );
  }
}
