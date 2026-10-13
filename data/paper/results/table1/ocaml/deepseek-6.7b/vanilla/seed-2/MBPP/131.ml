let rec reverse_vowels (str1 : string) : string =
  let len = String.length str1 in
  let rec helper (i : int) (j : int) : string = 
    if i >= j then str1
    else 
      let char_i = String.get str1 i in
      let char_j = String.get str1 j in
      if String.contains "aeiouAEIOU" char_i && String.contains "aeiouAEIOU" char_j then 
        let str2 = String.sub str1 0 i ^ (String.make 1 char_j) ^ 
                   (String.sub str1 (i+1) (j-i-1)) ^ (String.make 1 char_i) ^
                   String.sub str1 (j+1) (len-j-1) in
        helper i (j-1) ^ "\n" ^ str2 ^ "\n"
      else helper i (j-1)
  in helper 0 (len - 1);;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to reverse only the vowels of a given string (where y is not a vowel). *)
