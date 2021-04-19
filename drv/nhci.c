/*
 * nhci.c
 *
 *  Created on: Apr 19, 2021
 *      Author: Korneliusz Osmenda
 */

#include <wdm.h>
#include <ntstatus.h>
#include "basetype.h"

PAGEABLE NTSTATUS
DriverEntry(__in PDRIVER_OBJECT drvobj, __in PUNICODE_STRING RegistryPath)
{

	return STATUS_SUCCESS;
}
