import 'package:flutter/material.dart';

void main() => runApp(const CareerCompassApp());

class CareerCompassApp extends StatefulWidget {
  const CareerCompassApp({super.key});

  @override
  State<CareerCompassApp> createState() => _CareerCompassAppState();
}

class _CareerCompassAppState extends State<CareerCompassApp> {
  ThemeMode _themeMode = ThemeMode.light;

  void _toggleTheme() {
    setState(() {
      _themeMode =
          _themeMode == ThemeMode.light ? ThemeMode.dark : ThemeMode.light;
    });
  }

  @override
  Widget build(BuildContext context) {
    const seed = Color(0xFF6750A4);
    return MaterialApp(
      title: 'Career Compass',
      debugShowCheckedModeBanner: false,
      themeMode: _themeMode,
      theme: ThemeData(
        useMaterial3: true,
        brightness: Brightness.light,
        colorScheme: ColorScheme.fromSeed(
          seedColor: seed,
          brightness: Brightness.light,
        ).copyWith(
          surface: Colors.white,
          onSurface: const Color(0xFF25213B),
          onSurfaceVariant: const Color(0xFF625D70),
        ),
        scaffoldBackgroundColor: const Color(0xFFF5F3FB),
        textTheme: ThemeData.light().textTheme.apply(
          bodyColor: const Color(0xFF25213B),
          displayColor: const Color(0xFF25213B),
        ),
        cardTheme: CardThemeData(
          elevation: 0,
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(22),
            side: const BorderSide(color: Color(0xFFEAE7F2)),
          ),
        ),
        inputDecorationTheme: InputDecorationTheme(
          filled: true,
          fillColor: const Color(0xFFF7F6FC),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(14),
            borderSide: BorderSide.none,
          ),
        ),
      ),
      darkTheme: ThemeData(
        useMaterial3: true,
        brightness: Brightness.dark,
        colorScheme: ColorScheme.fromSeed(
          seedColor: seed,
          brightness: Brightness.dark,
        ).copyWith(
          surface: const Color(0xFF242131),
          onSurface: const Color(0xFFF5F1FF),
          onSurfaceVariant: const Color(0xFFC0B8D1),
        ),
        textTheme: ThemeData.dark().textTheme.apply(
          bodyColor: const Color(0xFFF5F1FF),
          displayColor: const Color(0xFFF5F1FF),
        ),
        cardTheme: CardThemeData(
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(22),
          ),
        ),
      ),
      home: CareerHomePage(onToggleTheme: _toggleTheme),
    );
  }
}

class Career {
  final String interest;
  final String title;
  final String description;
  final String duration;
  final IconData icon;
  final List<String> skills;
  final List<String> roadmap;
  final List<String> strengths;
  final Color color;

  const Career({
    required this.interest,
    required this.title,
    required this.description,
    required this.duration,
    required this.icon,
    required this.skills,
    required this.roadmap,
    required this.strengths,
    required this.color,
  });
}

const careers = <Career>[
  Career(
    interest: 'Building apps & websites',
    title: 'Software Developer',
    description:
        'Create useful websites, mobile apps and software experiences.',
    duration: '6–9 months to build a foundation',
    icon: Icons.code_rounded,
    color: Color(0xFF5267D9),
    skills: ['Programming basics', 'Java or Python', 'DSA fundamentals', 'Git & GitHub', 'Build 2 projects'],
    roadmap: ['Choose one programming language', 'Practice core programming and DSA', 'Learn Git and databases', 'Build and publish two projects', 'Prepare a resume and apply for internships'],
    strengths: ['Problem solving', 'Logical thinking', 'Enjoys building things'],
  ),
  Career(
    interest: 'AI, models & smart systems',
    title: 'Machine Learning Engineer',
    description:
        'Build systems that learn patterns from data and make predictions.',
    duration: '8–12 months to build a foundation',
    icon: Icons.psychology_alt_rounded,
    color: Color(0xFF008A80),
    skills: ['Python', 'NumPy & pandas', 'Statistics basics', 'Scikit-learn', 'Build an ML project'],
    roadmap: ['Learn Python fundamentals', 'Practice NumPy and pandas', 'Study statistics and core ML algorithms', 'Train and evaluate a model', 'Publish a project with clear results'],
    strengths: ['Curiosity', 'Analytical thinking', 'Enjoys experimentation'],
  ),
  Career(
    interest: 'Data, charts & insights',
    title: 'Data Analyst',
    description:
        'Turn raw information into clear reports, dashboards and decisions.',
    duration: '4–7 months to build a foundation',
    icon: Icons.query_stats_rounded,
    color: Color(0xFFB66A13),
    skills: ['Excel or Sheets', 'SQL', 'Python basics', 'Power BI or Tableau', 'Create a dashboard'],
    roadmap: ['Learn spreadsheet analysis', 'Practice SQL queries', 'Learn basic statistics', 'Create dashboards from public data', 'Build a portfolio of two case studies'],
    strengths: ['Attention to detail', 'Pattern recognition', 'Clear communication'],
  ),
  Career(
    interest: 'Visual design & creativity',
    title: 'UI/UX Designer',
    description:
        'Design digital products that are attractive, clear and easy to use.',
    duration: '3–6 months to build a foundation',
    icon: Icons.palette_outlined,
    color: Color(0xFFB64F7B),
    skills: ['Design principles', 'Figma', 'Wireframes', 'User research basics', 'Portfolio case study'],
    roadmap: ['Study layout, color and typography', 'Learn Figma tools', 'Redesign an everyday app screen', 'Create a clickable prototype', 'Present two portfolio case studies'],
    strengths: ['Creativity', 'Empathy', 'Visual communication'],
  ),
  Career(
    interest: 'Video editing & content',
    title: 'Video Editor / Content Creator',
    description:
        'Tell stories with video, motion, sound and platform-ready content.',
    duration: '2–5 months to build a foundation',
    icon: Icons.movie_creation_outlined,
    color: Color(0xFF7652B8),
    skills: ['Editing workflow', 'Pacing & storytelling', 'Color correction', 'Audio cleanup', 'Create a showreel'],
    roadmap: ['Master one editing tool', 'Practice cuts, pacing and transitions', 'Learn audio and color basics', 'Make three sample edits', 'Publish a focused showreel and seek clients'],
    strengths: ['Creativity', 'Visual storytelling', 'Consistency'],
  ),
  Career(
    interest: 'Networks & digital safety',
    title: 'Cybersecurity Analyst',
    description:
        'Help protect applications, networks and data from security threats.',
    duration: '6–10 months to build a foundation',
    icon: Icons.shield_outlined,
    color: Color(0xFF3479A8),
    skills: ['Networking basics', 'Linux', 'Security fundamentals', 'Log analysis', 'Practice in legal labs'],
    roadmap: ['Learn networking concepts', 'Get comfortable with Linux', 'Study common security risks', 'Practice in authorized labs', 'Document labs and prepare for entry roles'],
    strengths: ['Curiosity', 'Careful observation', 'Structured thinking'],
  ),
  Career(
    interest: 'Cloud & infrastructure',
    title: 'Cloud Engineer',
    description:
        'Deploy, connect and maintain applications and cloud infrastructure.',
    duration: '6–9 months to build a foundation',
    icon: Icons.cloud_outlined,
    color: Color(0xFF3977C5),
    skills: ['Linux basics', 'Networking', 'AWS or Azure basics', 'Docker basics', 'Deploy a small app'],
    roadmap: ['Learn Linux and networking', 'Choose one cloud platform', 'Understand storage and compute', 'Containerize and deploy an app', 'Document the deployment and study for a beginner certification'],
    strengths: ['Systems thinking', 'Troubleshooting', 'Attention to detail'],
  ),
];

class CareerHomePage extends StatefulWidget {
  final VoidCallback onToggleTheme;
  const CareerHomePage({super.key, required this.onToggleTheme});

  @override
  State<CareerHomePage> createState() => _CareerHomePageState();
}

class _CareerHomePageState extends State<CareerHomePage> {
  String _selectedInterest = careers.first.interest;
  Career? _recommended;
  final Set<String> _completedSkills = {};
  final Set<String> _savedCareers = {};
  String _search = '';

  Career get _selected =>
      careers.firstWhere((career) => career.interest == _selectedInterest);

  double _progressFor(Career career) {
    if (career.skills.isEmpty) return 0;
    final completed = career.skills
        .where((skill) => _completedSkills.contains('${career.title}::$skill'))
        .length;
    return completed / career.skills.length;
  }

  void _recommend() {
    setState(() => _recommended = _selected);
  }

  void _toggleSkill(Career career, String skill, bool? checked) {
    final key = '${career.title}::$skill';
    setState(() {
      if (checked == true) {
        _completedSkills.add(key);
      } else {
        _completedSkills.remove(key);
      }
    });
  }

  void _toggleSave(Career career) {
    setState(() {
      if (!_savedCareers.add(career.title)) {
        _savedCareers.remove(career.title);
      }
    });
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(_savedCareers.contains(career.title)
            ? '${career.title} saved'
            : '${career.title} removed from saved careers'),
        behavior: SnackBarBehavior.floating,
      ),
    );
  }

  void _openSaved() {
    showModalBottomSheet<void>(
      context: context,
      showDragHandle: true,
      isScrollControlled: true,
      builder: (sheetContext) {
        final saved = careers
            .where((career) => _savedCareers.contains(career.title))
            .toList();
        return SafeArea(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(20, 8, 20, 24),
            child: saved.isEmpty
                ? const SizedBox(
                    height: 180,
                    child: Center(
                      child: Text('No saved careers yet.\nBookmark a career to keep it here.',
                          textAlign: TextAlign.center),
                    ),
                  )
                : Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Saved careers',
                          style: Theme.of(context).textTheme.titleLarge),
                      const SizedBox(height: 12),
                      ...saved.map((career) => ListTile(
                            leading: CircleAvatar(
                              backgroundColor: career.color.withValues(alpha: .12),
                              child: Icon(career.icon, color: career.color),
                            ),
                            title: Text(career.title),
                            subtitle: Text(career.interest),
                            onTap: () {
                              Navigator.pop(sheetContext);
                              setState(() {
                                _selectedInterest = career.interest;
                                _recommended = career;
                              });
                            },
                          )),
                    ],
                  ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final filteredCareers = careers
        .where((career) =>
            career.title.toLowerCase().contains(_search.toLowerCase()) ||
            career.interest.toLowerCase().contains(_search.toLowerCase()))
        .toList();

    return Scaffold(
      appBar: AppBar(
        titleSpacing: 20,
        title: Row(
          children: [
            Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primaryContainer,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Icon(Icons.explore_rounded,
                  color: Theme.of(context).colorScheme.onPrimaryContainer),
            ),
            const SizedBox(width: 10),
            const Text('Career Compass',
                style: TextStyle(fontWeight: FontWeight.w800)),
          ],
        ),
        actions: [
          IconButton(
            tooltip: 'Saved careers',
            onPressed: _openSaved,
            icon: Badge(
              isLabelVisible: _savedCareers.isNotEmpty,
              label: Text('${_savedCareers.length}'),
              child: const Icon(Icons.bookmark_outline_rounded),
            ),
          ),
          IconButton(
            tooltip: 'Toggle light/dark theme',
            onPressed: widget.onToggleTheme,
            icon: const Icon(Icons.contrast_rounded),
          ),
          const SizedBox(width: 8),
        ],
      ),
      body: SafeArea(
        child: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 1000),
            child: ListView(
              padding: const EdgeInsets.fromLTRB(20, 12, 20, 36),
              children: [
                _buildHero(context),
                const SizedBox(height: 22),
                Text('Find a direction that fits you',
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(
                          fontWeight: FontWeight.w800,
                        )),
                const SizedBox(height: 6),
                Text(
                  'Choose what you enjoy. Explore a career, learn the skills, and track your progress.',
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: Theme.of(context).colorScheme.onSurfaceVariant,
                      ),
                ),
                const SizedBox(height: 16),
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(18),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const _SectionLabel(number: '01', title: 'YOUR INTEREST'),
                        const SizedBox(height: 12),
                        DropdownButtonFormField<String>(
                          value: _selectedInterest,
                          isExpanded: true,
                          decoration: const InputDecoration(
                            prefixIcon: Icon(Icons.interests_outlined),
                            hintText: 'Select an interest',
                          ),
                          items: careers
                              .map((career) => DropdownMenuItem(
                                    value: career.interest,
                                    child: Text(career.interest),
                                  ))
                              .toList(),
                          onChanged: (value) {
                            if (value == null) return;
                            setState(() => _selectedInterest = value);
                          },
                        ),
                        const SizedBox(height: 14),
                        SizedBox(
                          width: double.infinity,
                          child: FilledButton.icon(
                            onPressed: _recommend,
                            icon: const Icon(Icons.auto_awesome_rounded),
                            label: const Text('Recommend my career'),
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          'This student project gives a rule-based recommendation based on your selected interest.',
                          style: Theme.of(context).textTheme.bodySmall?.copyWith(
                                color: Theme.of(context)
                                    .colorScheme
                                    .onSurfaceVariant,
                              ),
                        ),
                      ],
                    ),
                  ),
                ),
                if (_recommended != null) ...[
                  const SizedBox(height: 20),
                  _buildCareerResult(context, _recommended!),
                ],
                const SizedBox(height: 26),
                Row(
                  children: [
                    Expanded(
                      child: Text('Explore career paths',
                          style: Theme.of(context)
                              .textTheme
                              .titleLarge
                              ?.copyWith(fontWeight: FontWeight.w800)),
                    ),
                    Text('${filteredCareers.length} paths',
                        style: Theme.of(context).textTheme.labelLarge),
                  ],
                ),
                const SizedBox(height: 12),
                TextField(
                  onChanged: (value) => setState(() => _search = value),
                  decoration: const InputDecoration(
                    hintText: 'Search careers or interests',
                    prefixIcon: Icon(Icons.search_rounded),
                  ),
                ),
                const SizedBox(height: 14),
                LayoutBuilder(
                  builder: (context, constraints) {
                    final columns = constraints.maxWidth >= 720
                        ? 3
                        : constraints.maxWidth >= 470
                            ? 2
                            : 1;
                    final ratio = columns == 1 ? 2.25 : 1.12;
                    return GridView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: filteredCareers.length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: columns,
                        crossAxisSpacing: 12,
                        mainAxisSpacing: 12,
                        childAspectRatio: ratio,
                      ),
                      itemBuilder: (context, index) {
                        final career = filteredCareers[index];
                        return _CareerTile(
                          career: career,
                          saved: _savedCareers.contains(career.title),
                          onTap: () {
                            setState(() {
                              _selectedInterest = career.interest;
                              _recommended = career;
                            });
                          },
                        );
                      },
                    );
                  },
                ),
                const SizedBox(height: 22),
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(18),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(Icons.lightbulb_outline_rounded,
                            color: Theme.of(context).colorScheme.primary,
                            size: 28),
                        const SizedBox(width: 12),
                        const Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('A small reminder',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w800,
                                      fontSize: 16)),
                              SizedBox(height: 5),
                              Text(
                                'A recommendation is a starting point, not a final decision. Try beginner projects and choose the path that keeps you curious.',
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Center(
                  child: Text(
                    'CAREER COMPASS • STUDENT PROJECT',
                    style: Theme.of(context).textTheme.labelSmall?.copyWith(
                          letterSpacing: 1.3,
                          color: Theme.of(context).colorScheme.onSurfaceVariant,
                        ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildHero(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [scheme.primary, scheme.tertiary],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(28),
      ),
      child: Stack(
        children: [
          Positioned(
            right: -8,
            top: 0,
            child: Icon(Icons.explore_rounded,
                size: 110, color: Colors.white.withValues(alpha: .12)),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                decoration: BoxDecoration(
                  color: Colors.white.withValues(alpha: .17),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: const Text('YOUR FUTURE, YOUR WAY',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        letterSpacing: 1.2,
                        fontSize: 11)),
              ),
              const SizedBox(height: 18),
              const Text(
                'Discover the career\nthat feels like you.',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  height: 1.12,
                  fontWeight: FontWeight.w800,
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                'Explore your interests. Build real skills.\nTake your next step with confidence.',
                style: TextStyle(color: Colors.white, height: 1.45),
              ),
              const SizedBox(height: 18),
              Wrap(
                spacing: 8,
                runSpacing: 8,
                children: [
                  _HeroPill(icon: Icons.explore_outlined, text: 'Explore'),
                  _HeroPill(icon: Icons.check_circle_outline, text: 'Track skills'),
                  _HeroPill(icon: Icons.bookmark_outline, text: 'Save paths'),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildCareerResult(BuildContext context, Career career) {
    final progress = _progressFor(career);
    final saved = _savedCareers.contains(career.title);
    final scheme = Theme.of(context).colorScheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const _SectionLabel(number: '02', title: 'YOUR RECOMMENDATION'),
        const SizedBox(height: 12),
        Card(
          child: Padding(
            padding: const EdgeInsets.all(18),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(14),
                      decoration: BoxDecoration(
                        color: career.color.withValues(alpha: .12),
                        borderRadius: BorderRadius.circular(18),
                      ),
                      child: Icon(career.icon, color: career.color, size: 30),
                    ),
                    const SizedBox(width: 14),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(career.title,
                              style: Theme.of(context)
                                  .textTheme
                                  .titleLarge
                                  ?.copyWith(fontWeight: FontWeight.w800)),
                          const SizedBox(height: 5),
                          Text(career.description),
                          const SizedBox(height: 10),
                          Row(
                            children: [
                              Icon(Icons.schedule_rounded,
                                  size: 16, color: scheme.primary),
                              const SizedBox(width: 5),
                              Expanded(
                                child: Text(career.duration,
                                    style: TextStyle(
                                        color: scheme.primary,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 12)),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    IconButton(
                      tooltip: saved ? 'Remove saved career' : 'Save career',
                      onPressed: () => _toggleSave(career),
                      icon: Icon(saved
                          ? Icons.bookmark_rounded
                          : Icons.bookmark_border_rounded),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                const Divider(),
                const SizedBox(height: 12),
                Text('Strengths that can help',
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          fontWeight: FontWeight.w800,
                        )),
                const SizedBox(height: 10),
                Wrap(
                  spacing: 8,
                  runSpacing: 8,
                  children: career.strengths
                      .map((strength) => Chip(
                            avatar: const Icon(Icons.check_circle_outline,
                                size: 16),
                            label: Text(strength),
                          ))
                      .toList(),
                ),
                const SizedBox(height: 22),
                Row(
                  children: [
                    Expanded(
                      child: Text('Skill checklist',
                          style: Theme.of(context)
                              .textTheme
                              .titleMedium
                              ?.copyWith(fontWeight: FontWeight.w800)),
                    ),
                    Text('${(progress * 100).round()}% complete',
                        style: TextStyle(
                            color: scheme.primary,
                            fontWeight: FontWeight.w700)),
                  ],
                ),
                const SizedBox(height: 10),
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: LinearProgressIndicator(
                    value: progress,
                    minHeight: 8,
                  ),
                ),
                const SizedBox(height: 8),
                ...career.skills.map((skill) {
                  final checked = _completedSkills
                      .contains('${career.title}::$skill');
                  return CheckboxListTile(
                    value: checked,
                    onChanged: (value) => _toggleSkill(career, skill, value),
                    controlAffinity: ListTileControlAffinity.leading,
                    contentPadding: EdgeInsets.zero,
                    title: Text(skill,
                        style: TextStyle(
                          decoration:
                              checked ? TextDecoration.lineThrough : null,
                        )),
                  );
                }),
                const SizedBox(height: 12),
                Text('Your learning roadmap',
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          fontWeight: FontWeight.w800,
                        )),
                const SizedBox(height: 14),
                ...List.generate(career.roadmap.length, (index) {
                  final isLast = index == career.roadmap.length - 1;
                  return IntrinsicHeight(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        SizedBox(
                          width: 30,
                          child: Column(
                            children: [
                              CircleAvatar(
                                radius: 13,
                                backgroundColor: career.color.withValues(alpha: .14),
                                child: Text('${index + 1}',
                                    style: TextStyle(
                                        color: career.color,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w800)),
                              ),
                              if (!isLast)
                                Expanded(
                                  child: Container(
                                    width: 2,
                                    margin: const EdgeInsets.symmetric(vertical: 4),
                                    color: scheme.outlineVariant,
                                  ),
                                ),
                            ],
                          ),
                        ),
                        const SizedBox(width: 10),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(top: 4, bottom: 18),
                            child: Text(career.roadmap[index]),
                          ),
                        ),
                      ],
                    ),
                  );
                }),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class _CareerTile extends StatelessWidget {
  final Career career;
  final bool saved;
  final VoidCallback onTap;

  const _CareerTile({
    required this.career,
    required this.saved,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    return Card(
      clipBehavior: Clip.antiAlias,
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(11),
                    decoration: BoxDecoration(
                      color: career.color.withValues(alpha: .12),
                      borderRadius: BorderRadius.circular(14),
                    ),
                    child: Icon(career.icon, color: career.color, size: 25),
                  ),
                  const Spacer(),
                  if (saved)
                    Icon(Icons.bookmark_rounded, color: scheme.primary, size: 20),
                  Icon(Icons.arrow_outward_rounded,
                      color: scheme.onSurfaceVariant, size: 19),
                ],
              ),
              const SizedBox(height: 12),
              Text(career.title,
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        fontWeight: FontWeight.w800,
                      )),
              const SizedBox(height: 5),
              Text(
                career.description,
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                      color: scheme.onSurfaceVariant,
                      height: 1.4,
                    ),
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  Icon(Icons.checklist_rounded, size: 16, color: career.color),
                  const SizedBox(width: 5),
                  Text('${career.skills.length} skill goals',
                      style: Theme.of(context).textTheme.labelMedium),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _SectionLabel extends StatelessWidget {
  final String number;
  final String title;

  const _SectionLabel({required this.number, required this.title});

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    return Row(
      children: [
        Container(
          width: 29,
          height: 29,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: scheme.primaryContainer,
            borderRadius: BorderRadius.circular(9),
          ),
          child: Text(number,
              style: TextStyle(
                  color: scheme.onPrimaryContainer,
                  fontWeight: FontWeight.w800,
                  fontSize: 12)),
        ),
        const SizedBox(width: 10),
        Text(title,
            style: Theme.of(context).textTheme.labelLarge?.copyWith(
                  letterSpacing: 1.2,
                  fontWeight: FontWeight.w800,
                )),
      ],
    );
  }
}

class _HeroPill extends StatelessWidget {
  final IconData icon;
  final String text;

  const _HeroPill({required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
      decoration: BoxDecoration(
        color: Colors.white.withValues(alpha: .15),
        borderRadius: BorderRadius.circular(30),
        border: Border.all(color: Colors.white.withValues(alpha: .25)),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, size: 15, color: Colors.white),
          const SizedBox(width: 6),
          Text(text,
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontWeight: FontWeight.w600)),
        ],
      ),
    );
  }
}
