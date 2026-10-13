(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to convert degrees to radians. *)
let rec radian_degree (degree : int) : float = 
    degree * 3.1415926535897932384626433832795028841971693993751058209749445923078164062862089986280348253421170679 / 180.0;;

