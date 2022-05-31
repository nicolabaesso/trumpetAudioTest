/*
	Copyright 2014-2015 Harald Sitter <sitter@kde.org>

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License as
	published by the Free Software Foundation; either version 2 of
	the License or (at your option) version 3 or any later version
	accepted by the membership of KDE e.V. (or its successor approved
	by the membership of KDE e.V.), which shall act as a proxy
	defined in Section 14 of version 3 of the license.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program.  If not, see <http://www.gnu.org/licenses/>.
*/

import QtQuick 2.0
import org.kde.plasma.components 3.0 as PlasmaComponents
import org.kde.plasma.plasmoid 2.0
import QtMultimedia 5.15
import org.kde.plasma.extras 2.0 as PlasmaExtras

Item{
    Column{
        
        PlasmaExtras.Heading {
            level: 1
            text: i18n("Welcome to the audio test section!")
        }
        
        PlasmaComponents.Button{
            text: i18n("Test both your speakers here")
            SoundEffect{
                id: regularTrumpet
                source: "../audioFiles/trumpet.wav"
            }
            onPressed:{regularTrumpet.play()}
        }
        
        PlasmaComponents.Button{
            text: i18n("Test here your left speaker")
            SoundEffect{
                id: leftTrumpet
                source: "../audioFiles/trumpetSX.wav"
            }
            onPressed:{leftTrumpet.play()}
        }
        
        PlasmaComponents.Button{
            text: i18n("Test here your right speaker")
            SoundEffect{
                id: rightTrumpet
                source: "../audioFiles/trumpetDX.wav"
            }
            onPressed:{rightTrumpet.play()}
        }
        
        PlasmaComponents.Button{
            text: i18n("Test both your speakers here, in a better way!")
            SoundEffect{
                id: happyTrumpet
                source: "../audioFiles/trumpetHarmonised.wav"
            }
            onPressed:{happyTrumpet.play()}
        }
    }
}

