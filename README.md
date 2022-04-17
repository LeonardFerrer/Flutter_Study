# Flutter_Study
Repositório dedicado ao estudo e aprendizado do framework Flutter para desenvolvimento Mobile

## Depurando via Wi-fi
Essa é uma otima opção par quando se precisar depura um app no celular sem a necessidade de estar com um cabo conectado diretamente ao computador.

**Nota 1:** Dever haver instalado no computador o pacote [Android Debug Bridge(adb)](https://developer.android.com/studio/command-line/adb?hl=pt-br).

**Nota 2:** O procedimento necessitar que o celular inicialmente esteja conectado ao computador.

**Nota 3:** O celular deve estar com a função **Depuração via wifi** deve estar ativa.

Lista dispositivos conectados:
```
adb devices
```

Esse comando irá lista os dispositivos conectados, se aparecer seu dispositivo sigá para o próximo passo.

Configurar porta e protocolo TCPIP:
```
adb tcpip 5555
```

No passo seguinte, iremos indetificar o ip do celular. Para isso entre nas configurações wifi do dispositivo, em seuida digite o ip seguido de:
```
adb connect 192.168.0.5
```