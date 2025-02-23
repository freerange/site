require 'rails_helper'

RSpec.describe SnipRenderer do
  describe '#render' do
    context 'when the snip is markdown' do
      it 'returns the markdown rendered as html' do
        snip = double(content: '# Hello', extension: 'markdown', erb: false)
        rendered = SnipRenderer.new.render(snip, binding)
        expect(rendered).to eq("<h1 id=\"hello\">Hello</h1>\n")
      end

      it 'uses the GitHub Flavoured Markdown renderer' do
        snip = double(content: 'content', extension: 'markdown', erb: false)
        expect(Kramdown::Document).to receive(:new).with('content', include(input: 'GFM')).and_call_original
        SnipRenderer.new.render(snip, binding)
      end

      it 'uses rouge for syntax highlighting in markdown content' do
        snip = double(content: 'content', extension: 'markdown', erb: false)
        expect(Kramdown::Document).to receive(:new).with('content', include(syntax_highlighter: 'rouge')).and_call_original
        SnipRenderer.new.render(snip, binding)
      end

      context 'and ERB is enabled' do
        it 'returns the ERB & markdown rendered as html' do
          snip = double(content: '# <%= "Hello" %>', extension: 'markdown', erb: true)
          rendered = SnipRenderer.new.render(snip, binding)
          expect(rendered).to eq("<h1 id=\"hello\">Hello</h1>\n")
        end
      end
    end

    context 'when the snip is not markdown' do
      it 'returns the unmodified content' do
        snip = double(content: '# Hello', extension: 'not-markdown', erb: false)
        rendered = SnipRenderer.new.render(snip, binding)
        expect(rendered).to eq('# Hello')
      end

      context 'and ERB is enabled' do
        it 'returns the ERB rendered' do
          snip = double(content: '# <%= "Hello" %>', extension: 'not-markdown', erb: true)
          rendered = SnipRenderer.new.render(snip, binding)
          expect(rendered).to eq('# Hello')
        end
      end
    end
  end
end
