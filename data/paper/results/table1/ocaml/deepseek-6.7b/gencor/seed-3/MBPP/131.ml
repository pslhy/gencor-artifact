
let rec reverse_vowels (str1 : string) : string =
  let str1 = String.uppercase_ascii str1 in
  let vowels = [ 'A'; 'E'; 'I'; 'O'; 'U' ] in
  let is_vowel c = List.exists (fun v -> c = v) vowels in
  let rec rev_vowels acc = function
    | [] -> List.rev acc
    | h::t -> if is_vowel h then rev_vowels (h::acc) t else rev_vowels (List.tl acc @ [h]) t in
  String.of_seq (List.of_seq (Seq.of_dispenser (fun () -> rev_vowels [] (List.of_seq (Seq.of_dispenser (fun () -> str1))))))

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to reverse only the vowels of a given string (where y is not a vowel). *)
