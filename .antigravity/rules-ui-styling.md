# UI, Styling & Design System Rules

> Princípios de design, padrões de CSS e diretrizes estéticas para o ecossistema Antigravity.

---

## 💎 Estética & Filosofia

- **Premium Feel**: O design deve ser moderno, limpo e responsivo. Use sombras sutis, gradientes suaves e bordas arredondadas (8px+).
- **Glassmorphism**: Use efeitos de transparência e blur em modais e overlays para um visual contemporâneo.
- **Micro-interações**: Adicione transições suaves (`transition: all 0.2s ease-in-out`) em hovers e estados ativos.

---

## 🎨 Design System Tokens

- **Colors**: Nunca use cores "puras" (como `#FF0000`). Use uma paleta de cores harmoniosa baseada em HSL.
- **Typography**: Use fontes modernas (Inter, Outfit, Roboto). Mantenha uma hierarquia clara com escalas tipográficas definidas.
- **Spacing**: Use uma escala base de 4px ou 8px (4, 8, 12, 16, 24, 32, 48...).

---

## 🛠️ Frameworks (TailwindCSS / CSS Modules)

### Se usar TailwindCSS:
- **No Class Hell**: Evite listas gigantes de classes no HTML. Use `@apply` em arquivos CSS para componentes reutilizáveis ou extraia para componentes React.
- **Arbitrary Values**: Evite `bg-[#123456]`. Adicione cores e espaçamentos customizados no `tailwind.config.js`.
- **Conditional Classes**: Use a biblioteca `clsx` ou `tailwind-merge` para manipular classes condicionais de forma limpa.

### Se usar CSS Modules / Vanilla CSS:
- **BEM Methodology**: Use o padrão `block__element--modifier` para organização de classes.
- **Variables**: Use CSS Variables (`--primary-color`) para facilitar o suporte a Dark Mode.

---

## 🌗 Modos de Cor

- **Dark Mode First**: Todo componente deve ser desenhado pensando na versão Light e Dark.
- **Consistency**: Use variáveis de cor que se adaptam automaticamente ou classes `dark:` do Tailwind.

---

## 📱 Responsividade

- **Mobile First**: Comece o desenvolvimento pensando no mobile e suba para desktop.
- **Breakpoints**: Use padrões de mercado (640px, 768px, 1024px, 1280px).

---

**Última atualização:** 2026-01-16  
**Versão:** 1.0
