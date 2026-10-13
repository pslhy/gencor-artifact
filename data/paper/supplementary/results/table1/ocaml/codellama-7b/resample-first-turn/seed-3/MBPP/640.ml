let rec remove_parenthesis (items : string list) : string =
  match items with
  | [] -> ""
  | x :: [] -> x
  | x :: y :: xs -> remove_parenthesis (y :: xs)
  | x :: _ -> ")" in

let test_cases = [
  ("(abc)", "abc"),
  ("()", ""),
  ("(a(b(c)d)e)", "abcd"),
  ("(a(b(c(d)e)f)g)", "abcdef"),
  ("()", ""),
  ("(a(b)c)", "abc"),
  ("((a)b)", "ab"),
  ("(a(b)c(d)e(f(g)))", "abcdefg"),
  ("(a(b(c(d(e(f))))))", "abcdef")
];

let test_fun (s, expected) =
  let actual = remove_parenthesis (s |> String.split ~on:'(') in
  if expected <> actual then
    Printf.sprintf
      "The function returned the wrong result for the test case: %s." s
  else
    Printf.sprintf "Test case passed: %s" s;

List.iter test_fun test_cases


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to remove the parenthesis and what is inbetween them from a string. *)
