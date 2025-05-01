import 'dart:io';

import 'package:path/path.dart' as p;

class BlurhashCache {
  final Directory cacheDir;
  const BlurhashCache(this.cacheDir);

  File getCacheFile(String blurHash, int width, int height, int punch, int channels) {
    final id = '$blurHash-$width-$height-$punch-$channels';
    final hash = id.hashCode.toString();
    final fileName = '$hash.blurhash';
    return File(p.join(cacheDir.path, fileName));
  }
}
