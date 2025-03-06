module.exports = {

  // Se você quiser configurar uma permissão para cada modo, utilize o formato abaixo:
  // permission: { radio: 'permissao.jbl', bluetooth: 'permissao.bluetooth' },
  // Para deixar sem permissão coloque 'nil.permissao'

  token: 'goiasrp.ac45a534e8faf976842eb86d5d4990f5c31beba2ab7b17f9ff1116d54d2f34e1',

  permission: ['perm.som'],

  command: 'som',
  prop: 'rojo_jblboombox',
  
  // Distância máxima (em metros) entre o jogador e o veículo/caixa de som
  // Se essa distância for excedida, a música irá parar de tocar
  maxDistance: Infinity,

  // dj: [
  //   {
  //     table: [-80.69,-813.27,326.16],
  //     speaker: [-80.69,-813.27,326.16],
  //     range: 50,
  //     volume: 100,
  //     permission: ['vanila.perm','admin.permissao'],
  //   },
  //   {
  //     table: [162.8,-930.67,15.0],
  //     speaker: [159.12,-1000.36,29.35],
  //     range: 100,
  //     volume: 100,
  //     permission: ['admin.permissao','developer'],
  //   }
  // ],

  range: { 
    // Todos os números podem ser substituidos por [range, volume]
    // ex: [48, 100] -> 48 metros com 100% de volume
    // Por padrão, o script entende que um número sozinho é o alcance em metros, e o volume será 100%
    vehicle: {
      '*': [48, 50], // Padrão (48 metros & 100% de volume)
      'f25': [500, 150], // (24 metros & 50% de volume)
      'golg8boxeteto': [300, 150], // (24 metros & 50% de volume)
    },

    // radio é a JBL, quando a música tocar fora de um veículo
    radio: [20, 100], // (20 metros & 50% de volume)
  },
  blacklist: ['spawn_do_veiculo'],
  allowBluetoothOnBikes: false,
}