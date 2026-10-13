let rec count_Substrings (s : string) : int =
  let len = String.length s in
  let rec helper i cnt =
    if i >= len then cnt else
      let j = ref i and sum = ref (int_of_char (String.get s i)) in
      let rec inner j sum =
        if !j + 1 >= len || !sum + int_of_char (String.get s (!j + 1)) > !j + 1 then (j := !j + 1; sum := !sum + int_of_char (String.get s (!j + 1)); inner !j !sum)
        else if !j + 1 = !sum then cnt + 1
        else cnt
      in
      helper (!j + 1) (inner !j !sum)
  in
  helper 0 0


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to count the number of substrings with the sum of digits equal to their length. *)
