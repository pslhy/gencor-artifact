
let rec count_Substrings (s : string) : int =
    let rec aux (i : int) (acc : int) (sum : int) : int =
        if i < 0 then acc
        else if sum = i then aux (i - 1) (acc + 1) (sum - i)
        else aux (i - 1) acc (sum + (int_of_char (String.get s i)))
    in
    aux ((String.length s) - 1) 0 0

let () = 
    assert (count_Substrings "2131122" = 4)

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to count the number of substrings with the sum of digits equal to their length. *)
