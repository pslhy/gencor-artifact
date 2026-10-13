let rec replace_spaces (string : string) : string =
  if String.length string = 0 then
    string
  else if String.get string 0 = ' ' then
    "%20" ^ replace_spaces (String.sub string 1 (String.length string - 1))
  else
    String.get string 0 ^ replace_spaces (String.sub string 1 (String.length string - 1))

let print = print_string 
   
let () = Printexc.record_backtrace true;;
let answer = replace_spaces "  test  spaces  ";;
print "the answer is: " ;;
print answer;;
the answer is: %20%20%20%20test%20%20spaces%20%20%20%20

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to replace all spaces in the given string with '%20'. *)
