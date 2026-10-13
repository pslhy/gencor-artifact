let rec radian_degree (degree : int) : float =
  if degree = 0 then 0.
  else
    let radian = radian_degree (degree - 1) in
    let radian = radian + 0.15915494309189534 in
    let radian = radian * radian in
    radian


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to convert degrees to radians. *)
