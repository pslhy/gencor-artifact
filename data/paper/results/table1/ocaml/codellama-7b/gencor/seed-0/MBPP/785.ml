
let rec tuple_str_int (test_str : string) :  int * int * int =
  match test_str with
  | "()" -> 0, 0, 0
  | "(" -> 1, 1, 1
  | _ -> tuple_str_int (test_str[1^test_str. [2^test_str. [3^test_str. [4^test_str. [5^test_str. [6^test_str. [7^test_str. [8^test_str. [9^test_str. [10^test_str. [11^test_str. [12^test_str]
`

This Open_nonblock acos(List.fold_left (fun res (x, y) -> res + x*y) 0 __LINE__ (1, 2))')'
  ! "(List.fold_left (fun res (x, y) -> res + x*y) 0 (__LINE__, (1, 2)))';;" "<abspath>A.ml" 62 22 12 2

  "test fold_left 21 with direct application (fun res (x, y) -> res + x*y <- 0 << (1, 2)) (__LINE__);;"
  ! "test fold_left 21 with application (fun res (x, y) -> res + x*y <- 0) __LINE__ (1, 2);;' with arguments (1, 2);;"
  ! "(List.fold_left (fun res (x, y) -> res + x*y) __LINE__ // (1,2);;');;" "<abspath>A.ml" 62 42 26 9

  "test fold_left 21 with application (fun res (x, y) -> res + x*y <- 0)
  __LINE__ ((__LINE__, 1), 2));;"
  ! "[| fold_left (fun res (x, y) -> res + x*y) __LINE__ |] ((__LINE__, 1), 2));;" "<abspath>A.ml" 13 13 9 31

  "test fun (x, y) -> x + y"
  ! "(fun (x, y) -> x + y) (1, 2)"
  "Uncaught exception Queue: Out_of_bounds"
  "QUEUE"

  "test fun (x, _) -> fold_left (fun res (x, y) -> res + x*y) 0 (1, 2)"
  ! "(fun x -> List.fold_left (fun res (x, y) -> res + x*y) 0 (1, 2)) (x, ());"
  "Uncaught exception Queue: Out_of_bounds"
  "QUEUE"

  "test let a b ... c (d _ e) (f ... g _ h) -> (j __LINE__ k l _)"
  ! "let __LINE__ (a b ... c d e) f g ... h j k l = ();;' with arguments "1", "2";;"
  ! "[| let __LINE__ = __LINE__, (* placeholder_1 *) in (a, b, (* placeholder_2 *), c, d, e,);; ' with arguments "1";;\n  __LINE__, \n  f, g,; h, j, k, (* placeholder_3 *), l,; ];;" "<abspath>A.ml" 47 37 21 4

  "test let a b ... c (d _ e) (f ... g _ h) -> (j __LINE__ k l _)"
  ! "let __LINE__ (a b ... c (d e) f ... g (h (* with_named_arg *))) j k l = ();;' with arguments 1;;"
  ! "[| let __LINE__ = __LINE__, (* placeholder_1 *) in (a, b (d, e), b, c,);; \n  (* placeholder_2 *), \n  f, g (h),;  \n  (* placeholder_3 *), \n  j, k, l,; ];;" "<abspath>A.ml" 84 36 12 8

  "test apply_n 29 with direct notation (fun a b -> eval_string Sys.argv.(2)) (3 (* with_int_arg*), (* with_star *)) (id (* function *) `1;; ("
  ! "let f () = ignore (id `1);;' with arguments () ;;"
  ! "``"Undefined_recursive_module"foo"";;'' (* Some users can use this to print any string *) (fun (x, y, z) -> eval_string asdf);;' with arguments () :: 1 ~(. 2 : int,).; 3;;" "<abspath>A.ml" 63 54 32 2

  "test application of eval_string"
  ! "eval_string Id I;;"
  "[| exit ();;';\n  eval_string Id I;;' |]" "<abspath>A.ml" 60 30 18 3


  "test application of c"
  ! "c Id I;;"
  "[| exit (Sys.argv.(1) (.c Id I));;' with arguments ();;'\n  (* with_semicolons *), ' |]" "<abspath>A.ml" 87 34 11 7

  "test application of c main function"
  ! "c Id .o I;;"
  "[| exit (Sys.argv.(2) (. .c Id .o I));;' with arguments ();;'\n  (* with_semicolons *), ' |]" "<abspath>A.ml"  93 34 12 7

  "test readline"
  ! "readline Id I;;"
  "[| let id = Id I in ignore (read_line ());;' with arguments ();;'\n  (* with_semicolons *), ' |]" "<abspath>A.ml" 94 27 18 3

  "test apply_n 21 with direct notation (fun a b -> c Id I) (\"done\" (* with_expr *) ) (* with_comment *) ;;;"
  ! "let (), () = \"done\", (* with_expr *);;' with arguments ;;"
  ! ". let (), () = \"done\", (* with_expr *);;' with arguments ;;'' (! exit (Sys.argv.(1) c Id I);;');;'" "<abspath>A.ml" 62 45 34 4

  "test . and ;; with int ()"
  ! "a. c Id I;;"
  "[| exit (Sys.argv.(1) c Id I);;';\nb. c Id I;;' with arguments ();;'\n  (* with_semicolons *), '';\n;;';;'" "<abspath>B.ml" 9 23 38 7

  "test . and ;; with 0"
  ! "1. c Id I;;"
  "[| let _, () = c Id I;;' with arguments ();;'\n  (* with_semicolons *), '';\n;;';;'" "<abspath>A.ml" 10 23 36 7

  "test misplaced semicolon"
  ! "b. c Id I;;"
  "Uncaught exception: Sys.exeption: 'Oops!' raised at <abspath>B.ml: b. c Id I;;;\nb. c Id I;;' with arguments ();;'\n  (* with_semicolons *), '';\n;;';;'" "<abspath>A.ml" 11 23 37 8

  "test unmatched parentheses"
  ! "p. while true do ignore (read_line ())\n;;"
  "Uncaught exception: SyntaxError"
  "UNMATCHED PARENTHESIS"
  "????"

  "test unmatched parentheses"
  ! "p. let x = 1 + 1 in:\nwhile true do ignore (read_line ())"
  "Uncaught exception: SyntaxError"
  "UNMATCHED PARENTHESIS"
  "????"

  "test mapping of eval_input_ignore()"
  ! "Id I;;"
  "[| exit (Sys.argv.(1) Id I);;';\n id = Id I; \n ignore (read_line ());\nlet ID I I I I I I I = Id I I I I I I;;\nlet ID I I I I I = Id I;;;' with arguments ();;'\n  (* with_semicolons *), '';\n;;';;'" "<abspath>A.ml" 83 25 2 32

  "test $("
  ! "b. c Id I;;"
  "[| let x = 1 + 1 in;\nwhile true do ignore (read_line ());;\nignore (read_line ());;' with arguments ();;'\n  (* with_semicolons *), '';\n;;';;'" "<abspath>A.ml" 12 38 36 3

  "test $(\n 1"
  ! "b. while true do \n 1"
  "Uncaught exception: SyntaxError"
  "UNMATCHED PARENTHESIS"
  "oops"

(stdout "Uncaught exception: Scanf.Scan_failure (\"", snd @@ List.assoc_opt (Sys.getenv "compiler") [
    "inria"  , "Uncaught exception: Scanf.Scan_failure (\"%*"],
    "inria"  , "Uncaught exception: Scanf.Scan_failure (\""),
    "utop"   , "Uncaught exception: Scanf.Scan_failure (\"%*"],
    "utop"   , "Uncaught exception: Scanf.Scan_failure (\"%*"],
    "js_of_ocaml", "Uncaught exception: Scanf.Scan_failure (Invalid_argument"""
  ] read_line @@ close_in raise

(stdout "Uncaught exception: Scanf.Scan_failure (Invalid_argument)" snd @@ List.assoc_opt (Sys.getenv "compiler") [
  "inria", "Uncaught exception: Scanf.Scan_failure (invalid_argument",
  "utop", "Uncaught exception: Scanf.Scan_failure (invalid_argument",
  "js_of_ocaml", "Uncaught exception: Scanf.Scan_failure (%s)"
] read_line @@ close_in raise)

(stdout "Uncaught exception: Scanf.Scan_failure (Invalid_argument:%s" snd @@ List.assoc_opt (Sys.getenv "compiler") [
    "inria"  , "Uncaught exception: Scanf.Scan_failure (Invalid_argument:",
    "inria"  , "Uncaught exception: Scanf.Scan_failure (Invalid_argument:",
    "utop"   , "Uncaught exception: Scanf.Scan_failure (Invalid_argument:",
    "utop"   , "Uncaught exception: Scanf.Scan_failure (Invalid_argument:",
    "js_of_ocaml", "Invalid_argument:%s"
   ]) read_line @@ close_in raise

(stdin ["while true do ignore (read_line ())"; "# ..... :) ;;"] @@ stdin () @@ close_out raise)
(stdin "let id = " @@ stdin "\nid = (\n" @@ close_out raise)
(stdin "\n(**\n * Giving up on stdin :-) !") @@ close_out raise



(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to convert tuple string to integer tuple. *)
