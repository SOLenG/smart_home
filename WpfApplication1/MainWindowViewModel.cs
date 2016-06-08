using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using OxyPlot;
using OxyPlot.Axes;
using OxyPlot.Series;

namespace WpfApplication1
{
    class MainWindowViewModel
    {
        public PlotModel GraphModel { get; set; }

        public MainWindowViewModel()
        {
            Program.init();

            GraphModel = new PlotModel();
            SetGraphAxesAndTitle();
            GenerateData();
            GraphModel.InvalidatePlot(true); // Notifie au PlotView de reconstruire le graphique
        }

        private void SetGraphAxesAndTitle()
        {
            /** @var Title : Titre du graphique */
            GraphModel.Title = "Graphique général de toutes les données Netatmo récoltés";

            /** Génération Axe X  */
            LinearAxis abscisse = new LinearAxis();
            abscisse.Title = "Temps";
            abscisse.Position = AxisPosition.Bottom;

            /** Génération Axe Y  */
            LinearAxis ordonnee = new LinearAxis();
            ordonnee.Title = "ppm|%|C°|mm|dB|mbar";
            ordonnee.Position = AxisPosition.Left;

            /** Ajout des axes au PlotModel */
            GraphModel.Axes.Add(abscisse);
            GraphModel.Axes.Add(ordonnee);
        }

        /**
         * TODO : Revoir la courbe de temps afin de prendre en compte les variations entre les échantillons de données.
         */
        private void GenerateData()
        {
            foreach (Capteur capteur in TreatmentData.capteurs)
            {
                if(capteur.type == "netatmo") { continue; }
                if (!TreatmentData.dicNetatmos.ContainsKey(capteur.id)) { continue; }

                LineSeries donnees = new LineSeries();
                int abscisse = 0;
                
                foreach (Netatmo netatmo in TreatmentData.dicNetatmos[capteur.id])
                {
                    donnees.Points.Add(new DataPoint(abscisse++, Convert.ToDouble(netatmo.value)));
                }

                GraphModel.Series.Add(donnees);
            }
        }
    }
}
