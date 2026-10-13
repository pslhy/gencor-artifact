(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to count those characters which have vowels as their neighbors in the given string. *)
let rec count_vowels (test_str : string) : int = 
    (* Declare and initialize a variable to hold the result of the computation *)
    let result : int = 0 in 
    (* Declare and initialize variables to hold the current index in the string and the remaining part of the string *)
    let rec loop (current_index : int) (str : string) = 
      if current_index >= 0 then
        (* If the current char is a vowel, increment the result *)
        if str.[current_index] == 'a' || str.[current_index] == 'e' || str.[current_index] == 'i' ||
           str.[current_index] == 'o' || str.[current_index] == 'u' then 
          result + 1 
        else begin
          (* If the neighboring chars are not vowels, increment the current index and keep checking the recursive loop *)
          current_index + 1;
          loop (current_index + 1) str
        end 
    in loop 0 str;
    result

