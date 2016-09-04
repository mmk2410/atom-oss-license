###

COPYRIGHT (c) 2015 mmk2410

MIT License

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
"Software"), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE
LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

###

{CompositeDisposable} = require 'atom'
YearRange = require './year-range'

module.exports = AtomOssLicense =
  subscriptions: null

  config:
    copyright:
      title: "Copyright Line"
      description:
        "This shows the copyright line at the beginning of the license"
      type: 'boolean'
      default: true
    name:
      title: "Your name",
      description: "Your name as shown in the copyright line (only if enabled)"
      type: 'string'
      default: ''
    xheader:
      title: "Custom Header"
      description: "Add a custom header after the license text"
      type: "boolean"
      default: false
    xheaderpath:
      title: "Custom Header Path"
      description: "Absolute path to the header file"
      type: 'string'
      default: ''

  activate: (state) ->
    @subscriptions = new CompositeDisposable

    @subscriptions.add atom.commands.add 'atom-workspace',
      'License: MIT': => @mit()
      'License: Apache': => @apache()
      'License: Artistic': => @artistic()
      'License: BSD ISC': => @bsd_isc()
      'License: BSD v2': => @bsd_v2()
      'License: BSD v3': => @bsd_v3()
      'License: CC0': => @cc0()
      'License: Eclipse': => @eclipse()
      'License: GPL v2': => @gpl_v2()
      'License: GPL v3': => @gpl_v3()
      'License: GPL Affero v3': => @gpl_affero()
      'License: LGPL v2.1': => @lgpl_v2_1()
      'License: LGPL v3': => @lgpl_v3()
      'License: Mozilla': => @mozilla()
      'License: no license': => @no_license()
      'License: The Unlicense': => @unlicense()
      'License: Academic Free License': => @academic_free_license()
      'License: Apple Public Source 2 License': => @apple_public_source_2()
      'License: Boost Software License': => @boost_software_license()
      'License: CeCILL': => @CeCILL()
      'License: Common Development and Distribution License':
        => @common_dev_and_dist_license()
      'License: Common Public License': => @common_public_license()
      'License: Cryptix General License': => @cryptix_general_license()
      'License: Educational Community License':
        => @educational_community_license()
      'License: Eiffel Forum License': => @eiffel_forum_license()
      'License: IBM Public License': => @IBM_public_license()
      'License: Intel Open Source License': => @intel_open_source_license()
      'License: LaTeX Project Public License':
        => @LaTeX_project_public_license()
      'License: Microsoft Public License': => @microsoft_public_license()
      'License: Microsoft Reciprocal License':
        => @microsoft_reciprocal_license()
      'License: Netscape Public License': => @netscape_public_license()
      'License: Open Software License': => @open_software_license()
      'License: OpenSSL License': => @openssl_license()
      'License: PHP License': => @php_license()
      'License: Python Software Foundation License':
        => @python_software_foundation_license()
      'License: Q Public License': => @q_public_license()
      'License: SUN Industry Standards Source License':
        => @sun_industry_standards_source_license()
      'License: SUN Public License': => @sun_public_license()
      'License: W3C License': => @w3c_license()
      'License: WTFPL': => @wtfpl()
      'License: xFree86 License': => @xfree86_license()
      'License: zlib/libpng License': => @zlib_libpng_license()
      'License: Zope Public License': => @zope_public_license()
      'License: Berkeley Database License': => @berkeley_database_license()
      'License: Open Font License': => @ofl()
      'License: Creative Commons 4.0 BY': => @cc_by()
      'License: Creative Commons 4.0 BY-SA': => @cc_by_sa()
      'License: Open Recipe License': => @open_recipe_license()
      'License: Toogle Copyright line': => @toggle_copyright()
      'License: Toggle Header': => @toggle_header()
      'License: Update': => @updateCopyright(atom.workspace.getActiveTextEditor())

  deactivate: ->
    @subscriptions.dispose()

  academic_free_license: ->
    @addLicense('academic_free_license')

  apple_public_source_2: ->
    @addLicense('apple_public_source_2')

  boost_software_license: ->
    @addLicense('boost_software_license')

  CeCILL: ->
    @addLicense('CeCILL')

  common_dev_and_dist_license: ->
    @addLicense('common_dev_and_dist_license')

  common_public_license: ->
    @addLicense('common_public_license')

  cryptix_general_license: ->
    @addLicense('cryptix_general_license')

  educational_community_license: ->
    @addLicense('educational_community_license')

  eiffel_forum_license: ->
    @addLicense('eiffel_forum_license')

  IBM_public_license: ->
    @addLicense('IBM_public_license')

  intel_open_source_license: ->
    @addLicense('intel_open_source_license')

  LaTeX_project_public_license: ->
    @addLicense('LaTeX_project_public_license')

  microsoft_public_license: ->
    @addLicense('microsoft_public_license')

  microsoft_reciprocal_license: ->
    @addLicense('microsoft_reciprocal_license')

  netscape_public_license: ->
    @addLicense('netscape_public_license')

  open_software_license: ->
    @addLicense('open_software_license')

  openssl_license: ->
    @addLicense('openssl_license')

  php_license: ->
    @addLicense('php_license')

  python_software_foundation_license: ->
    @addLicense('python_software_foundation_license')

  q_public_license: ->
    @addLicense('q_public_license')

  sun_industry_standards_source_license: ->
    @addLicense('sun_industry_standards_source_license')

  sun_public_license: ->
    @addLicense('sun_public_license')

  w3c_license: ->
    @addLicense('w3c_license')

  wtfpl: ->
    @addLicense('wtfpl')

  xfree86_license: ->
    @addLicense('xfree86_license')

  zlib_libpng_license: ->
    @addLicense('zlib_libpng_license')

  zope_public_license: ->
    @addLicense('zope_public_license')

  apache: ->
    console.log "Apache License"
    @addLicense('apache')

  artistic: ->
    @addLicense('artistic')

  berkeley_database_license: ->
    @addLicense('berkeley_database_license')

  bsd_isc: ->
    @addLicense('bsd_isc')

  bsd_v2: ->
    @addLicense('bsd_v2')

  bsd_v3: ->
    @addLicense('bsd_v3')

  cc0: ->
    @addLicense('cc0')

  eclipse: ->
    @addLicense('eclipse')

  gpl_v2: ->
    @addLicense('gpl_v2')

  gpl_v3: ->
    @addLicense('gpl_v3')

  gpl_affero: ->
    @addLicense('gpl_affero')

  lgpl_v2_1: ->
    @addLicense('lgpl_v2_1')

  lgpl_v3: ->
    @addLicense('lgpl_v3')

  mit: ->
    @addLicense('mit')

  mozilla: ->
    @addLicense('mozilla')

  no_license: ->
    @addLicense('no_license')

  unlicense: ->
    @addLicense('unlicense')

  ofl: ->
    @addLicense('ofl')

  cc_by: ->
    @addLicense('cc_by')

  cc_by_sa: ->
    @addLicense('cc_by_sa')

  open_recipe_license: ->
    @addLicense('open_recipe_license')

  toggle_copyright: ->
    if atom.config.get("atom-oss-license.copyright") is true
      atom.config.set("atom-oss-license.copyright", false)
    else
      atom.config.set("atom-oss-license.copyright", true)

  toggle_header: ->
    if atom.config.get("atom-oss-license.xheader") is true
      atom.config.set("atom-oss-license.xheader", false)
    else
      atom.config.set("atom-oss-license.xheader", true)

  # Determines if the supplied object already contains a copyright notice.
  # Only checks for a copyright notice in the first ten lines of the file.
  #
  # * `obj` Buffer to check for a copyright notice, either a {TextEditor} or {TextBuffer}.
  #
  # Returns a {Boolean} indicating whether this buffer has a copyright notice.
  hasCopyright: (obj) ->
    return @hasCopyright(obj.buffer) if obj.buffer?

    @hasCopyrightInText(obj.getTextInRange([[0, 0], [10, 0]]))

  # Determines if the supplied text has a copyright notice.
  #
  # * `text` {String} of the text within which to search for a copyright notice.
  #
  # Returns {Boolean} indicating whether this text has a copyright notice.
  hasCopyrightInText: (text) ->
    text.match(/Copyright \(c\)/m)

  #  After `callback` is called, puts the cursor back where it was before.
  #
  # * `editor` {TextEditor} where the cursor is.
  # * `callback` A {Function} that manipulates the cursor position.
  restoreCursor: (editor, callback) ->
    marker = editor.markBufferPosition(editor.getCursorBufferPosition(), persistent: false)
    callback()
    editor.setCursorBufferPosition(marker.getHeadBufferPosition())
    marker.destroy()

  # Updates copyright in the first ten lines.
  #
  # * `editor` {TextEditor} where the copyright should be updated.
  updateCopyright: (editor = atom.workspace.getActiveTextEditor()) ->
    if @hasCopyright(editor)
      editor.scanInBufferRange YearRange.pattern, [[0, 0], [10, 0]], ({matchText, replace}) ->
        yearRange = new YearRange(matchText)
        yearRange.addYear(new Date().getFullYear())
        replace(yearRange.toString())

  addLicense: (license) ->
    editor = atom.workspace.getActiveTextEditor()
    unless @hasCopyright(editor)
      @restoreCursor editor, =>
        editor.transact =>
          fs = require 'fs'
          filename = __dirname + "/license/" + license + ".txt"
          fs.readFile filename, 'utf8', (err, contents) ->
            if not err
              copybool = atom.config.get("atom-oss-license.copyright")
              headerbool = atom.config.get("atom-oss-license.xheader")
              if copybool
                year = new YearRange(new Date().getFullYear())
                name = atom.config.get("atom-oss-license.name")
                if name is ""
                  name = "<YOUR NAME>"
                copyright = "Copyright (c) #{year} #{name}"
                contents = "#{copyright}\n\n#{contents}"
              editor.setCursorBufferPosition([0, 0], autoscroll: false)
              editor.insertText(contents, select: true)
              editor.toggleLineCommentsInSelection()
              editor.setCursorBufferPosition(editor.getSelectedBufferRange().end)
              editor.insertText("\n")
              if headerbool
                headerpath = atom.config.get("atom-oss-license.xheaderpath")
                if headerpath?
                  fs.readFile headerpath, 'utf8', (err, headercontents) ->
                    if not err
                      editor.insertText("\n\n#{headercontents}")
                    else
                      console.log err
            else
              console.log err
