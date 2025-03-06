module.exports = {
  token: '9ce10379-e172-459d-9b2f-4d4374827ad6',
  
  // Se você quiser configurar uma permissão para cada modo, utilize o formato abaixo:
  // permission: { radio: 'permissao.jbl', bluetooth: 'permissao.bluetooth' },
  permission: 'perm.som',

  command: 'som',
  prop: 'prop_boombox_01',
  
  // Distância máxima (em metros) entre o jogador e o veículo/caixa de som
  // Se essa distância for excedida, a música irá parar de tocar
  maxDistance: '100',

  // dj: [
  //   {
  //     table: [120.81, -1280.32, 29.49],
  //     speaker: [112.71, -1287.38, 28.46],
  //     range: 50,
  //     volume: 100,
  //     permission: 'manager.permissao' 
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
    radio: [20, 50], // (20 metros & 50% de volume)
  },
  blacklist: ['spawn_do_veiculo'],
  allowBluetoothOnBikes: false,
}