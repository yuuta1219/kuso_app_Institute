module.exports = {
  content: [
    './app/views/**/*.html.erb',
    './app/helpers/**/*.rb',
    './app/assets/stylesheets/**/*.css',
    './app/javascript/**/*.js'
  ],
  theme: {
    extend: {
      animation: {
        "slide-rotate-hor-b-fwd": "slide-rotate-hor-b-fwd 0.5s cubic-bezier(0.455, 0.030, 0.515, 0.955)   both",
        "scale-in-hor-center": "scale-in-hor-center 0.5s cubic-bezier(0.250, 0.460, 0.450, 0.940)   both"
      },
      keyframes: {
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
        }
      }
    }
  },
  plugins: [require("daisyui")],
  daisyui: { 
    themes: ["synthwave"],
  },
}
