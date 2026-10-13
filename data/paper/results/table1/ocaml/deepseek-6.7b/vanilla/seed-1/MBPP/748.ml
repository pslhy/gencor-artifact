let rec capital_words_spaces (str1 : string) : string =
  match str1 with
  | "" -> ""
  | s ->
      let open String in
      if s.[0] >= 'A' && s.[0] <= 'Z' then " " ^ s else "" ^ s
      ^ capital_words_spaces (sub s 1 (length s - 1));;

capital_words_spaces "HelloWorld NoSpacesHere MyNameIsMartinAndThisSentenceIsFormattedCorrectly";;

(* The output will be:
    " Hello World No Spaces Here My Name Is Martin And This Sentence Is Formatted Correctly"
*)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to put spaces between words starting with capital letters in a given string. *)
