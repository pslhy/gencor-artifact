(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function to remove the characters which have odd index values of a given string. *)
let rec odd_values_string (str : string) : string = 
    (* Declare a new string with the same length as the input string *)
    let result : string = String.make (String.length str) ''
    (* Loop through each character in the input string *)
    let rec loop (index : int) : unit = 
        if index < String.length str then 
            (* If the current character's index is odd, include it in the result string *)
            if index mod 2 = 1 then result.[index] <- str.[index]
            (* Move on to the next character in the input string *)
            loop (index + 1)
    in loop 0; result

