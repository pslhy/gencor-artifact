let rec count_char_position (str1 : string) : int =
    let rec check_pos (str1 : string) (pos : int) (count : int) : int =
    if pos < String.length str1 then
         if (int_of_char str1.[pos] - int_of_char 'A') < 26 && (int_of_char str1.[pos] - int_of_char 'A') >= 0 then
              check_pos str1 (pos + 1) (count + 1)
         else
              check_pos str1 (pos + 1) count
    else
        count
in
    check_pos (String.uppercase_ascii str1) 0 0


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to count the number of characters in a string that occur at the same position in the string as in the English alphabet (case insensitive). *)
