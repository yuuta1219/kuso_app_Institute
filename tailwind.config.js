module.exports = {
  content: [
    './app/views/**/*.html.erb',
    './app/helpers/**/*.rb',
    './app/assets/stylesheets/**/*.css',
    './app/javascript/**/*.js',
    './app/javascript/**/*.jsx'
  ],
  theme: {
    extend: {
      fontFamily: {
        kawaii: ['Yomogi', 'cursive'],
        umbrella: ['Noto Serif JP', 'serif'],
        robo: ['DotGothic16', 'sans-serif'],
        sawarabi: ['Sawarabi Mincho', 'serif'],
        aidoji: ['M PLUS Rounded 1c', 'sans-serif']
      },
      animation: {
        "slide-rotate-hor-b-fwd": "slide-rotate-hor-b-fwd 0.5s cubic-bezier(0.455, 0.030, 0.515, 0.955)   both",
        "scale-in-hor-center": "scale-in-hor-center 0.5s cubic-bezier(0.250, 0.460, 0.450, 0.940)   both",
        "color-change-2x": "color-change-2x 2s linear  infinite alternate both",
        "fall": "fall 5s linear infinite",
        "kenburns-top": "kenburns-top 5s ease   both",
        "focus-in-expand-fwd": "focus-in-expand-fwd 0.8s cubic-bezier(0.250, 0.460, 0.450, 0.940)   both",
        "scale-up-hor-center": "scale-up-hor-center 0.4s cubic-bezier(0.390, 0.575, 0.565, 1.000)   both",
        "flicker-out-1": "flicker-out-1 2s linear   both",
        "slide": "slide 10s linear infinite"
      },
      keyframes: {
        "slide": {
          "0%": {
            left: "100%",
            opacity: "1"
          },
          "90%": {
            opacity: "1"
          },
          "100%": {
            left: "-200%",
            opacity: "0"
          }
        },
        "flicker-out-1": {
          "0%,13.9%,15%,22.9%,25%,34.9%,40%,42.9%,45%,50%,54.9%,69.5%,69.9%,79.9%": {
              opacity: "1"
          },
          "14%,14.9%,23%,24.9%,35%,39.9%,43%,44.9%,55%,69.4%,70%,79.4%,80%,89.8%,90%": {
              opacity: "0",
              "box-shadow": "none"
          },
          "89.9%": {
              opacity: "1",
              "box-shadow": "none"
          },
          to: {
              opacity: "0"
          }
        },
        "scale-up-hor-center": {
          "0%": {
              transform: "scaleX(.4)"
          },
          to: {
              transform: "scaleX(1)"
          }
        },
        "focus-in-expand-fwd": {
          "0%": {
              "letter-spacing": "-.5em",
              transform: "translateZ(-800px)",
              filter: "blur(12px)",
              opacity: "0"
          },
          to: {
              transform: "translateZ(0)",
              filter: "blur(0)",
              opacity: "1"
          }
        },
        "kenburns-top": {
          "0%": {
              transform: "scale(1) translate(0%, 0%)",
              "transform-origin": ""
          },
          to: {
              transform: "scale(4) translate(2%, 21%)",
              "transform-origin": ""
          }
        },
        "color-change-2x": {
          "0%": {
            background: "#F30100"
          },
          to: {
            background: "#ffffff"
          }
        },
        "scale-in-hor-center": {
          "0%": {
            transform: "scaleX(0)",
            opacity: "1"
          },
          to: {
            transform: "scaleX(1)",
            opacity: "1"
          }
        },
        "slide-rotate-hor-b-fwd": {
          "0%": {
            transform: "translateY(0) translateZ(0) rotateX(0deg)",
            "transform-origin": "top center"
          },
          to: {
            transform: "translateY(150px) translateZ(130px) rotateX(90deg)",
            "transform-origin": "top center"
          }
        },
        "fall": {
          "0%": {
            top: "-100px",
            opacity: "1"
          },
          "90%": {
            opacity: "1"
          },
          "100%": {
            top: "100vh",
            opacity: "0"
          }
        }
      }
    }
  },
  plugins: [
    function({ addUtilities }) {
      const newUtilities = {
        '.vertical': {
          writingMode: 'vertical-rl',
        },
      }
      addUtilities(newUtilities)
    },
    require('daisyui'),
    require('tailwindcss-hero-patterns'),
  ],
  daisyui: {
    themes: ["light","dark","cupcake","bumblebee","emerald","corporate","synthwave","retro","cyberpunk","valentine","halloween","garden","forest","aqua","lofi","pastel","fantasy","wireframe","black","luxury","dracula","cmyk","autumn","business","acid","lemonade","night","coffee","winter",
      {
        aespa: {
          "primary": "#1f0d4d",
          "secondary": "#363784",
          "accent": "#D2DBE0",
          "neutral": "#272626",
          "base-100": "#000000",
          "info": "#0000ff",
          "success": "#008000",
          "warning": "#ffff00",
          "error": "#ff0000",
        },
      },
    ],
  },
}
