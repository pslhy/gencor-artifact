let rec is_nested (string : string) : bool =
  let len = String.length string in
  let rec parse (index : int) (stack : char list) : bool =
    if index = len then List.exists (fun x -> x = '[') stack
    else
      match string.[index] with
      | '[' -> parse (index + 1) ('[' :: stack)
      | ']' -> (try ignore (List.find (fun x -> x = '[') stack); true
                with Not_found -> parse (index + 1) (']' :: stack))
      | _ -> failwith "Invalid character"
  in parse 0 []

let tests = [
  is_nested "[[]]", true;
  is_nested "[]]]]]]][[[[[]", false;
  is_nested "[][]", false;
  is_nested "[]", false;
  is_nested "[[][]]", true;
  is_nested "[[][[]", false;
]

List.iter (fun (x, expected) -> assert (x = expected)) tests;;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Create a function that takes a string as input which contains only square brackets. *)
(*     The function should return true if and only if there is a valid subsequence of brackets *)
(*     where at least one bracket in the subsequence is nested. *)
(*     >>> is_nested "[[]]" *)
(*     true *)
(*     >>> is_nested "[]]]]]]][[[[[]" *)
(*     false *)
(*     >>> is_nested "[][]" *)
(*     false *)
(*     >>> is_nested "[]" *)
(*     false *)
(*     >>> is_nested "[[][]]" *)
(*     true *)
(*     >>> is_nested "[[]][[" *)
(*     true *)
