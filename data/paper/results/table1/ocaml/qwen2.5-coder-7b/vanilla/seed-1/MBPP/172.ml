let rec count_occurance (s : string) : int = 
  let rec check (substring: string) (count: int) (index: int) =
    if index > String.length s - String.length substring then count
    else if String.sub s index (String.length substring) = substring
    then check substring (count + 1) (index + 1)
    else check substring count (index + 1)
  in check "std" 0 0


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to count the number of occurence of the string 'std' in a given string. *)
