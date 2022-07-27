# Set target value
ADDI s0, zero, 32

# Set initial value for s1
ADDI s1, zero, 1


# Quit once the value is high enough
check:
    # Execute doubler
    ADD a0, s1, zero
    JAL ra, doubler
    ADDI s1, a0, 0

    # Check for doubled value
    BGE s1, s0, end
	t3

# Function to double the input parameter
doubler:
   ADD a0, a0, a0
   JALR zero, ra, 0


end:
