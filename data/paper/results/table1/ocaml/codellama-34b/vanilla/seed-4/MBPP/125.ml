let rec find_length (string : string) : int = 
    (* Declare and initialize local variables for the starting index of the current substring and the maximum length *)
    let rec loop : int = 0 in 
    let max_length : int = 0 in 
    (* Base case: Substring of length 1 *)
    if String.length string = 1 then string 1 ; 
    
    (* Loop through the substring and compute the length of the current substring*)
    loop <- String.length string - 1 ; 
    let curr_length := 0 in 
    for i := 0 to String.length string - 1
        let char := String.get string i in 
        if char = '0' then curr_length += 1
        else curr_length

    (* Update the maximum length and starting index of the current substring if necessary *)
    if curr_length > max_length then max_length := curr_length ; 
    loop := i + 1

    (* Return the maximum length if the starting index is greater than or equal to the length of the string *)
    if loop > String.length string then max_length at


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the maximum difference between the number of 0s and number of 1s in any sub-string of the given binary string. *)
