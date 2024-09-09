import pandas as pd
import matplotlib.pyplot as plt

# Load the CSV file (replace 'results.csv' with the path to your file)
file_path = 'data/results.csv'
data = pd.read_csv(file_path)

# Clean the column names by stripping any extra spaces
data.columns = data.columns.str.strip()

# Plot the data
plt.figure(figsize=(8,6))
plt.plot(data['Time'], data['Error'], marker='o', linestyle='-', color='b')

# Set labels and title
plt.xlabel('Time')
plt.ylabel('Error')
plt.title('Time vs Error Plot')
plt.grid(True)

# Display the plot
plt.show()
