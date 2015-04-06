iabbrev <buffer> #! #!/usr/bin/env python
execute 'iabbrev <buffer> #* # -*- coding:'.(&fileencoding != '' ? &fileencoding : 'utf-8').' -*-'

