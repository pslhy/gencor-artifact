let rec find_Index (n : int) : int = 
    (* Iterate from 1 with step size 1 while length of resultant triangular number is < n *)
    for i = 1 to n
        (* Find the current triangular number *)
        let triangular_number = (i * (i + 1)) / 2
        (* Return the index of the smallest triangular number with n digits *)
        if (String.length (triangular_number |> string_of_int)) = n then
            return i
    (* If no triangular number with n digits is found return -1 *)
    -1


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the index of smallest triangular number with n digits. https://www.geeksforgeeks.org/index-of-smallest-triangular-number-with-n-digits/ *)
